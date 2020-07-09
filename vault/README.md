# 비밀번호 사용법

## 저장 정보
- **admin_password**: sudo 작업에 필요한 관리자의 비밀번호 
- **default_password**: 유저 아이디 생성 시 부여되는 기본 비밀번호

## 사용법

이 비밀번호 변수 파일은 `ansible-vault`를 이용해 암호화했습니다.
git에 올리거나, 파일을 공유할 때 암호화하는 것을 잊지 마세요. 
왠만하면 복호화하지 마시고 편집하시고, 
복호화했을 경우, 반드시 다시 암호화 해주세요. 

### 복호화
`ansible-vault decrypt passwords.yaml`

### 암호화
`ansible-vault encrypt passwords.yaml`

### 복호화 없이 편집
`ansible-vault edit passwords.yaml`
 

### 플레이북 실행
이 비밀번호 정보가 필요한 플레이북은 다음처럼 이용하면 됩니다. 

`ansible-playbook makeUser.yaml --ask-vault-pass` 

