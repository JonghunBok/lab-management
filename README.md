# 연구실 인프라스터럭처 관리 


이 레파지토리는 *Ansible*을 이용해 공용 서버 인프라스터럭처를 관리하고 싶은 연구실에서 사용할 만한 *Ansible Playbook*을 포함합니다.

다음의 작업들을 자동화하는데 도움이 되리라 믿습니다.

- [x] 기본적인 유틸리티 설치
- [x] *Docker* 설치
- [x] User 만들기
- [x] 그래픽 드라이버 설치 
- [ ] 기본적인 네트워크/보안 설정
- [ ] *Kubernetes* 설치

## 이용법

인수인계와 관리자 교육에 사용하기 용이하도록 각 작업 디렉토리에 이용법과 학습법을 `README.md`에 작성하고 있습니다. 
서버를 새로 세팅할 경우, 다음의 순서대로 진행하길 권장합니다.

이 레파지토리는 *Ubuntu* 운영체제를 사용하는 서버를 상정하고 작성되었습니다. 

1. 대상 서버에 *ssh* 서버 설치
2. 대상 서버를 *Ansible Inventory*에 등록 
3. 기본적인 서버 세팅
  - 기본적인 유틸리티 설치
  - 그래픽 드라이버 설치
  - User 만들기
4. 원하는 모듈 설치
  - *Docker*
  - *Kubernetes*

## 대상 서버에 *ssh* 서버 설치

## 대상 서버를 *Ansible Inventory*에 등록 

## 기본적인 서버 세팅

### 기본적인 유틸리티 설치

### 그래픽 드라이버 설치

### User 만들기



## 사용 예시

`ansible -i invetory all -m ping`
: 모든 호스트에 `ping` 모듈 이용해서  ping을 보내보기. 성공시 "pong" 출력.

`ansible -i newhosts all -a "nvidia-smi"`
: newhosts 인벤토리 파일에 있는 호스트에 `nvidia-smi` 커맨드 사용하고 결과값 반환.
  모듈을 특정하지 않았기 때문에 'command' 모듈을 사용하게 됨.

`ansible-playbook -i newhosts site.yml --ask-vault-pass --extra-var password=<password>`
: newhosts에 `site.yml` 플레이북 실행. 
  관리자의 비밀번호는 `vault`에 저장되어 있기 때문에 `--ask-vault-pass` 인자를 넣어줘서,
  vault 비밀번호를 입력할 수 있게 한다.
  유저 생성처럼 별도의 변수를 필요로 하는 role을 사용할 때는 
  `--extra-var key=value`를 사용해서 넣어주면 된다. 
