const validityMessageName = {
    badInput: '잘못된 입력입니다.',
    patternMismatch: '숫자는 포함 될 수 없습니다.',
    rangeOverflow: '범위를 초과하였습니다',
    rangeUnderflow: '범위에 미달하였습니다',
    stepMismatch: '간격에 맞게 입력하세요',
    tooLong: '최대 글자 미만으로 입력하세요',
    tooShort: '최소 글자 미만으로 입력하세요',
    typeMismatch: '형식에 맞게 입력하세요',
    valueMissing: '이름을 입력해주세요',
}

const validityMessagePwConfirm = {
    badInput: '잘못된 입력입니다.',
    patternMismatch: '비밀번호와 일치하지 않습니다',
    rangeOverflow: '범위를 초과하였습니다',
    rangeUnderflow: '범위에 미달하였습니다',
    stepMismatch: '간격에 맞게 입력하세요',
    tooLong: '최대 글자 미만으로 입력하세요',
    tooShort: '최소 글자 미만으로 입력하세요',
    typeMismatch: '형식에 맞게 입력하세요',
    valueMissing: '이 필드를 반드시 입력하세요',
}

const validityMessagePw = {
    badInput: '잘못된 입력입니다.',
    patternMismatch: '숫자와 대소문자를 포함한 8~20글자로 설정해주세요',
    rangeOverflow: '범위를 초과하였습니다',
    rangeUnderflow: '범위에 미달하였습니다',
    stepMismatch: '간격에 맞게 입력하세요',
    tooLong: '최대 글자 미만으로 입력하세요',
    tooShort: '최소 글자 미만으로 입력하세요',
    typeMismatch: '형식에 맞게 입력하세요',
    valueMissing: '이 필드를 반드시 입력하세요',
}

const validityMessagePhone = {
    badInput: '잘못된 입력입니다.',
    patternMismatch: '올바른 전화번호를 입력해주세요',
    rangeOverflow: '범위를 초과하였습니다',
    rangeUnderflow: '범위에 미달하였습니다',
    stepMismatch: '간격에 맞게 입력하세요',
    tooLong: '최대 글자 미만으로 입력하세요',
    tooShort: '최소 글자 미만으로 입력하세요',
    typeMismatch: '형식에 맞게 입력하세요',
    valueMissing: '이 필드를 반드시 입력하세요',
}

const validityMessage = {
    badInput: '잘못된 입력입니다.',
    patternMismatch: '양식에 맞게 입력해주세요',
    rangeOverflow: '범위를 초과하였습니다',
    rangeUnderflow: '범위에 미달하였습니다',
    stepMismatch: '간격에 맞게 입력하세요',
    tooLong: '최대 글자 미만으로 입력하세요',
    tooShort: '최소 글자 미만으로 입력하세요',
    typeMismatch: '형식에 맞게 입력하세요',
    valueMissing: '이 필드를 반드시 입력하세요',
}

function getMessage(validity, dic) {
    for (const key in dic) {
        if (validity[key]) {
            return dic[key]
        }
    }
}

function showError(input, dic) {
    input.setCustomValidity(getMessage(input.validity, dic) || '')
}

function onload() {
    document.querySelectorAll('input').forEach(input => {

        input.addEventListener('invalid', () => {
            document.forms[0].classList.add('was-validated')

            // 커스텀 에러메세지 설정
            switch (input.id) {
                case 'password':
                    showError(input, validityMessagePw)
                    break
                case 'password-confirm':
                    showError(input, validityMessagePwConfirm)
                    break
                case 'first_name':
                case 'last_name':
                    showError(input, validityMessageName)
                    break
                case 'phone':
                    showError(input, validityMessagePhone)
                    break
                default:
                    showError(input, validityMessage)
                    break
            }
        })

        // 인풋시
        input.addEventListener('input', () => {
            if (document.forms[0].classList.contains('was-validated')) {
                input.reportValidity()
            }
        })
    })

    let pwConfirm = document.getElementById('password-confirm');
    let pw_input = document.getElementById('password');
    pw_input.addEventListener('input', () => {
        let pw = pw_input.value;
        pwConfirm.setAttribute('pattern', pw)
    })
}

document.addEventListener('DOMContentLoaded', onload)

function validateID() {
    const id = $('#email').val();
    let emailReg = /[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/

    if(!emailReg.test(id)){
        alert('이메일을 정확히 입력해주세요')
        return
    }
    $.ajax({
        type: 'post',
        url: 'http://localhost:8120/validateID',
        dataType: 'text',
        data: {'username': id},
        success: function (data, textStatus) {
            if (data === 'valid') {
                console.log(data)
                alert("사용할 수 있는 이메일입니다.")
                $('#btn-validate-id').prop('disabled', true)
                $('#btn-validate-id').css('color','grey')
                $('#email').prop('disabled',true)
                $('#email').css('background-color','lightgrey')
                $('#btn-submit').prop('disabled',false)
            } else {
                console.log(data)
                alert('이미 사용중인 이메일입니다.')
            }
        },
        error: function (data, status) {
            alert(status + '에러 발생')
        }
    })
}

function checkForm(){
    $('#email').prop('disabled',false)
    return true
}
