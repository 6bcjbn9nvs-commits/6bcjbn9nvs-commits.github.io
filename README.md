# github.io 루트 저장소 준비물 (네이버 소유확인용)

네이버 서치어드바이저는 **호스트 단위 등록**만 허용하므로 `https://6bcjbn9nvs-commits.github.io/`의
소유확인 파일을 계정 루트에 올려야 합니다. 계정 루트는 `6bcjbn9nvs-commits.github.io` 저장소로만
서비스되고, Pickle의 GitHub 연결은 저장소 생성 권한이 없어 사용자가 저장소만 만들어 주면 됩니다.

## 진행 순서

1. GitHub에서 저장소 생성 (사용자): 이름 `6bcjbn9nvs-commits.github.io`, Public, 파일 없이 생성.
2. 이 폴더에서 `bash push.sh` (또는 이 파일들을 그 저장소에 커밋·푸시).
3. 1~2분 뒤 확인: <https://6bcjbn9nvs-commits.github.io/naver52fd1e0605fdee1d7e7ce59a72d6ac43.html>
   → `naver-site-verification: naver52fd1e0605fdee1d7e7ce59a72d6ac43.html` 가 보이면 성공.
4. 네이버 서치어드바이저 → 사이트 관리 → `https://6bcjbn9nvs-commits.github.io` 행의 **소유확인 진행** → **소유확인**.
5. 소유확인 후 같은 사이트 선택 → **사이트맵 제출**: `https://6bcjbn9nvs-commits.github.io/nexora-quote-desk/sitemap.xml`
6. **웹 페이지 수집 요청**: `https://6bcjbn9nvs-commits.github.io/nexora-quote-desk/`
   (경로 있는 URL은 등록이 안 되지만, 수집 요청은 호스트 아래 URL로 가능한지 확인 필요)
7. **robots.txt 검증**: 사이트 선택 → robots.txt 수집 → `https://6bcjbn9nvs-commits.github.io/nexora-quote-desk/robots.txt` 내용 확인.

## 파일

- `naver52fd1e0605fdee1d7e7ce59a72d6ac43.html` — 네이버가 내려준 확인 파일(내용 1줄). **수정 금지**
- `index.html` — 루트 방문자를 `/nexora-quote-desk/`로 보내는 안내 페이지(noindex)
- `robots.txt` — 호스트 루트용, 프로젝트 사이트맵 위치 안내
- `push.sh` — 저장소가 생기면 실행하는 푸시 스크립트

## 참고

- 구글 서치콘솔 등록은 이미 끝났습니다(소유확인 `google556afa04a5bd0cb1.html`, 사이트맵 제출, 3개 URL 색인 요청).
- 저장소를 만들지 않으면 네이버 등록은 불가능하고, 네이버 노출은 Yeti 크롤러의 링크 수집에만 의존합니다.
