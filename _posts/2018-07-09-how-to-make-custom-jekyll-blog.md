---
layout: post
title: "github jekyll 블로그 만들기 - 1"
---



## 정적 페이지(Static Page) 와 블로그

우리가 접하는 대부분의 웹페이지는 동적 페이지(Dynamic Page)입니다. 포털에서 뉴스 헤드라인을 서택하면 서버에서 해당 뉴스 기사를 받아와 뉴스 페이지를 띄워주는 것 처럼 사용자의 요청에 따라 동적으로 변하는 웹 페이지를 뜻합니다.

이와는 반대로 정적 페이지(Static Page)란 서버에 저장된 형태가 그대로 유지되는 웹페이지를 가르킵니다. 



## Github Pages와 jekyll

[GitHub Pages](https://pages.github.com/)는 GitHub 저장소의 내용을 웹 페이지로 서비스해주는 기능입니다. 그 중에서도 [Jekyll](https://jekyllrb.com/)은 [GitHub Pages](https://pages.github.com/)가 기본으로 지원하는 정적 사이트 생성기입니다. Github에 Markdown으로 작성된 문서롤 push하면 [Jekyll](https://jekyllrb.com/) 이 문서를HTML로 변환하여 웹페이지로 만들어줍니다. 즉 Github 저장소에 저장된 Markdown 소스들을 이용해 웹페이지로 만들어주는 서비스입니다. 

Github Pages와 Jekyll을 통한 정적 블로깅은 아래와 같은 장점을 가집니다. 

- 따로 서버를 두지 만들지 않아도 된다.
- Markdown으로 작성해 코드나 수식의 삽입이 간단하고, 다양한 에디터로 글을 쓸 수 있다.
- 각 포스트의 변경 이력이 Github를 통해 추적 가능하다.
- 무료 호스팅.

현재 [카카오](https://github.com/kakao/kakao.github.io), [우아한 형제들](http://woowabros.github.io/), [스포카](https://spoqa.github.io/) 등의 기업들이 jekyll을 이용하여 기술 블로그를 운영하고 있습니다. 



## Jekyll 설치를 위한 환경 만들기

- 윈도우 6.3을 기준으로 합니다.
- 'Github에 가입이 되어 있으며 repository를 create, clone을 할 수 있다'는 것을 전제로 합니다. Github 사용법은 [여기](https://milooy.wordpress.com/2017/06/21/working-together-with-github-tutorial/)를 참고하세요.
- 터미널은 [GitBash](https://gitforwindows.org/) 를 사용하는 것을 전제로 합니다. 

#### Ruby 설치하기

Jekyll은 Ruby로 만들어졌어요. Mac과 달리 Window는 Ruby를 내장하지 않고 있기 때문에 설치가 필요합니다. https://rubyinstaller.org/downloads/ 에서 맞는 버전을 설치한다. 

#### Atom 설치하기

Jekyll의 설정파일이나 HTML 파일을 편집하는 용도로 사용합니다. **https://atom.io/** 에서 설치가 가능하다. 

#### Github 계정에 Repository 만들기

Repository name이 `username.github.io` 인 Repository를 생성해 로컬 PC에 clone 한다. 



## Jekyll로 블로그 만들기

#### 1. 지킬 설치하기

~~~$ gem imstall jekyll~~~
$ gem install jekyll
~~~

먼저 Gitbash에서 clone해온 repository로 이동해 위와 같은 코드를 입력한다. 아래와 같은 로그가 나오면 설치에 성공한 것이다

![설치 성공]({{"/assets/gem_install.png" | absolute_url}})





1. 로컬 호스트에서 실험해보기
2. jekyll 파일 무엇인지 보기
3. config 파일 수정하기
4. add commit push
