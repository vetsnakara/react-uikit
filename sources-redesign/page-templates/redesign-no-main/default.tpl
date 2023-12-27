<!DOCTYPE html>
<html lang="ru" th:with="_cookie=${@view.getCookie('lowVisHTML')?.value}, theme=${_cookie == null || _cookie == 'false' ? 'common' : _cookie == 'true' ? 'blind-black-small-image' : _cookie}">

  <head th:attr="data-path=${@ResourceProcessor.wrap('/assets/redesign-theme/uikit/')}">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <th:block th:replace="fragments/head :: seo(${view})"></th:block>
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" type="image/png" href="/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="/favicon-16x16.png" sizes="16x16">
    <link rel="manifest" href="/manifest.json">
    <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#e64920">
    <meta name="apple-mobile-web-app-title" content="Работа России">
    <meta name="application-name" content="Работа России">
    <!-- Libraries -->
    <script th:src="${@ResourceProcessor.wrap('/assets/redesign-theme/scripts/jquery.js')}"></script>
    <script th:src="${@ResourceProcessor.wrap('/assets/redesign-theme/scripts/utils.js')}"></script>
    <script th:src="${@ResourceProcessor.wrap('/assets/redesign-theme/scripts/dayjs.js')}"></script>
    <script th:src="${@ResourceProcessor.wrap('/assets/redesign-theme/scripts/underscore.js')}"></script>
    <script th:src="${@ResourceProcessor.wrap('/assets/redesign-theme/scripts/react.production.min.js')}"></script>
    <script th:src="${@ResourceProcessor.wrap('/assets/redesign-theme/scripts/react-dom.production.min.js')}"></script>
    <!-- UI kit -->
    <script th:src="${@ResourceProcessor.wrap('/assets/redesign-theme/scripts/uikit.js')}"></script>
    <script th:src="${@ResourceProcessor.wrap('/assets/redesign-theme/scripts/react-uikit.min.js')}"></script>
    <script th:src="${@ResourceProcessor.wrap('/assets/redesign-theme/scripts/fallbacks.js')}" nomodule="true"></script>
    <script th:src="${@ResourceProcessor.wrap('/assets/redesign-theme/scripts/common.js')}"></script>
    <!-- UI kit styles -->
    <link class="theme-link" th:href="${@ResourceProcessor.wrap('/assets/redesign-theme/uikit/' + theme + '.css')}" rel="stylesheet" />
    <!-- Auth data -->
    <script>
      $(document).on('click', '[data-action="title-search-clear"]', function () {
        $('.search-content__input-control').val('')
      })
    </script>
    <script th:if="${@auth.isAuthorized()}">
      var isAuthorized = true;
      var userRoles = [(${ @parser.toString(@auth.getCurrentRoles()) })];
      var currentUser = [(${ @parser.toString(@auth.user()) })];
      var currentUserFull = [(${ @parser.toString(@view.user) })];
      var siteCode = '[(${view.getSiteCode()})]';
      var isCandidate = currentUserFull !== null
        ? (Object.keys(currentUserFull.roles)
          .map(function (value) {
            return currentUserFull.roles[value]
          }) || []).indexOf("Кандидат") > -1
        : false;
    </script>
    <script th:unless="${@auth.isAuthorized()}">
      var isAuthorized = false;
      var userRoles = null;
      var currentUser = null;
      var currentUserFull = null;
      var siteCode = '[(${view.getSiteCode()})]';
    </script>
    [( ${@iblock.show([[${view.getSiteCode()}]], "divolte_lib")} )]
  </head>

  <body class="body">
    <div class="mega-menu">
      <div class="mega-menu__wrapper">
        [( ${@iblock.show([[${view.getSiteCode()}]], "megamenu")} )]
        <div class="blind-panel-switcher">
          <button class="button button_plain blind-panel-switcher__button" aria-label="Переключить версию для слабовидящих" type="button"></button>
          <div class="blind-panel-switcher__tooltip">
            <span class="blind-panel-switcher__blind-mode-label">Версия для слабовидящих</span>
            <span class="blind-panel-switcher__normal-mode-label">Обычная версия</span>
            <div class="blind-panel-switcher__tooltip-arrow"></div>
          </div>
        </div>
        [( ${@iblock.show([[${view.getSiteCode()}]], "region_change")} )]
        <div class="mega-menu__user-interface">
          [( ${@iblock.show([[${view.getSiteCode()}]], 'prr_auth_head')} )]
        </div>
      </div>
    </div>
    <div class="blind-panel" th:attr="data-blind-mode=${theme}">
      <div class="blind-panel__wrapper">
        <div class="row">
          <div class="col-lg-6 col-md-7 col-sm-6 col-12">
            <div class="row">
              <div class="col-12 col-md-6 mb-2 mb-md-0">
                <button data-blind-moder="small" class="button button_plain button_icon blind-panel__button" type="button">
                  <svg class="icon button__icon blind-panel__icon">
                    <use href="/assets/redesign-theme/uikit/icon/icons.svg#blind-mode-small"></use>
                  </svg>
                </button>
                <button data-blind-moder="medium" class="button button_plain button_icon blind-panel__button" type="button">
                  <svg class="icon button__icon blind-panel__icon">
                    <use href="/assets/redesign-theme/uikit/icon/icons.svg#blind-mode-medium"></use>
                  </svg>
                </button>
                <button data-blind-moder="large" class="button button_plain button_icon blind-panel__button" type="button">
                  <svg class="icon button__icon blind-panel__icon ">
                    <use href="/assets/redesign-theme/uikit/icon/icons.svg#blind-mode-large"></use>
                  </svg>
                </button>
              </div>
              <div class="col-12 col-md-6 mb-2 mb-md-0">
                <button data-blind-moder="white" class="button button_plain button_icon blind-panel__button" type="button">
                  <svg class="icon button__icon blind-panel__icon">
                    <use href="/assets/redesign-theme/uikit/icon/icons.svg#blind-mode-white"></use>
                  </svg>
                </button>
                <button data-blind-moder="black" class="button button_plain button_icon blind-panel__button" type="button">
                  <svg class="icon button__icon blind-panel__icon">
                    <use href="/assets/redesign-theme/uikit/icon/icons.svg#blind-mode-black"></use>
                  </svg>
                </button>
                <button data-blind-moder="blue" class="button button_plain button_icon blind-panel__button" type="button">
                  <svg class="icon button__icon blind-panel__icon">
                    <use href="/assets/redesign-theme/uikit/icon/icons.svg#blind-mode-blue"></use>
                  </svg>
                </button>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-md-5 col-sm-5 col-12">
            <button data-blind-moder="noimage" class="button button_plain button_icontext blind-panel__button mt-1 mt-md-0 mb-md-1 mb-lg-0" type="button">
              <svg class="icon button__icon blind-panel__icon">
                <use href="/assets/redesign-theme/uikit/icon/icons.svg#blind-mode-image"></use>
              </svg>
              Изображения
            </button>
            <button data-blind-moder="image" class="button button_plain button_icontext blind-panel__button mt-1 mt-md-0 mb-md-1 mb-lg-0" type="button">
              <svg class="icon button__icon blind-panel__icon">
                <use href="/assets/redesign-theme/uikit/icon/icons.svg#blind-mode-noimage"></use>
              </svg>
              Изображения
            </button>

            <button data-blind-moder="sound" class="button button_plain button_icontext blind-panel__button blind-panel__sound-switcher mt-1 mt-lg-0" type="button">
              <svg class="icon button__icon blind-panel__icon">
                <use href="/assets/redesign-theme/uikit/icon/icons.svg#blind-mode-sound"></use>
              </svg>
              <svg class="icon button__icon blind-panel__icon">
                <use href="/assets/redesign-theme/uikit/icon/icons.svg#blind-mode-mute"></use>
              </svg>
              Звуковые подсказки
            </button>
          </div>
        </div>
      </div>
    </div>
    <header class="header">
      <div class="header__wrapper">
        [( ${@iblock.show([[${view.getSiteCode()}]], 'prr_logo')} )]
        <form class="search-content header__search" action="/vacancy/search" data-name="search-content" method="get" th:unless="${@auth.isAuthorized() and #strings.indexOf( @parser.toString( @view.user.roles ), 'Работодатель' ) > -1}">
          <label class="input search-content__input">
            <input class="search-content__input-control input__control" type="search" name="title">
            <button class="button-close button_icon search-content__close-button" data-action="title-search-clear" type="button" aria-label="Очистить">
              <svg class="icon button__icon search-content__close-icon">
                <use href="/assets/redesign-theme/uikit/icon/icons.svg#close"></use>
              </svg>
            </button>
          </label>
          <label class="search-content__select select">
            <select class="select__control" name="titleType">
              <option value="VACANCY_NAME" selected>по названию вакансии</option>
              <option value="VACANCY_DESCRIPTION">по описанию вакансии</option>
              <option value="COMPANY_NAME">по названию компании</option>
            </select>
          </label>
          <button class="search-content__button" type="submit">
            Найти
          </button>
        </form>
        <form class="search-content header__search" data-name="search-content" action="/cv/search" method="get" th:if="${@auth.isAuthorized() and #strings.indexOf( @parser.toString( @view.user.roles ), 'Работодатель' ) > -1}">
          <label class="input search-content__input">
            <input class="search-content__input-control input__control" type="search" name="title">
            <button class="button-close button_icon search-content__close-button" data-action="title-search-clear" type="button" aria-label="Очистить">
              <svg class="icon button__icon search-content__close-icon">
                <use href="/assets/redesign-theme/uikit/icon/icons.svg#close"></use>
              </svg>
            </button>
          </label>
          <label class="search-content__select select">
            <select class="select__control" name="titleType">
              <option value="CV_ALL" selected="">по всему резюме</option>
              <option value="CV_NAME">по названию резюме</option>
              <option value="CV_DESCRIPTION">по описанию резюме</option>
            </select>
          </label>
          <button class="search-content__button" type="submit">
            Найти
          </button>
        </form>
        <div class="search-content__mobile-container">
          <a href="/auth/manager/notification" class="search-content__user-counter ifemployer" data-name="notificationCounter" data-count="" data-cznuc-init="true" hidden>
            <svg class="icon">
              <use href="/assets/redesign-theme/uikit/icon/icons.svg#notification-on"></use>
            </svg>
          </a>
          <a href="/auth/candidate/notification" class="search-content__user-counter ifcandidate" data-name="notificationCounter" data-count="" data-cznuc-init="true" hidden>
            <svg class="icon">
              <use href="/assets/redesign-theme/uikit/icon/icons.svg#notification-on"></use>
            </svg>
          </a>
          <button class="search-content__mobile-button" type="button" data-name="search-button">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M11 19C15.4183 19 19 15.4183 19 11C19 6.58172 15.4183 3 11 3C6.58172 3 3 6.58172 3 11C3 15.4183 6.58172 19 11 19Z" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
              <path d="M20.9999 21L16.6499 16.65" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
            </svg>
          </button>
          <button class="search-content__burger burger" type="button" data-name="burger-button">
            <span class="burger__box">
              <span class="burger__inner"></span>
            </span>
          </button>
        </div>
      </div>
    </header>
    [( ${@iblock.show([[${view.getSiteCode()}]], 'banner')} )]
    <main class="main">
      <div class="main__wrapper">
        [( ${@iblock.show([[${view.getSiteCode()}]], "prr_breadcrumbs")} )]
      </div>

      <div th:replace="fragments/iblocks :: list(*{iblocks})"></div>
    </main>
    [( ${@iblock.show([[${view.getSiteCode()}]], "prr_site_agreement")} )]
    <footer class="footer">
      <div class="footer__wrapper">
        <div class="row">
          <div class="col-lg-8 col-md-6">
            <div class="row">
              <section class="col-sm-6 footer__section">
                <a class="footer__logo" href="/">
                  <img class="footer__logo-img" src="/assets/redesign-theme/uikit/footer/footer-logo.svg" alt="Эмблема Роструда." width="46" height="50">
                </a>
                <h5 class="footer__title">Работа России</h5>
                <a class="footer__link" href="/">Trudvsem.ru</a>
              </section>
              <section class="col-sm-6 footer__section">
                <h5 class="footer__nav-title">Работодатели</h5>
                <a class="footer__nav-link" href="/cv/search">Найти резюме</a>
                <a class="footer__nav-link" href="/auth/manager/vacancies/new">Добавить вакансию</a>
                <a class="footer__nav-link" href="/about/employer">Впервые на сайте</a>
              </section>
              <section class="col-sm-6 footer__section">
                <h5 class="footer__nav-title">Общая информация</h5>
                <a class="footer__nav-link" href="/czn">Государственная служба занятости</a>
                <a class="footer__nav-link" href="/opendata">Открытые данные</a>
                <a class="footer__nav-link" href="/opendata/media-partners">Партнеры</a>
                <a class="footer__nav-link" href="/help">Помощь</a>
              </section>
              <section class="col-sm-6 footer__section">
                <h5 class="footer__nav-title">Соискатели</h5>
                <nav class="footer__nav">
                  <a class="footer__nav-link" href="/vacancy/search">Найти работу</a>
                  <a class="footer__nav-link" href="/auth/candidate/cvs/new">Добавить резюме</a>
                  <a class="footer__nav-link" href="/information-pages/biggest-employers">Крупнейшие работодатели</a>
                  <a class="footer__nav-link" href="/information-pages/special">Трудоустройство инвалидов</a>
                  <a class="footer__nav-link" href="/about/candidate">Впервые на сайте</a>
                </nav>
              </section>
            </div>
          </div>
          <section class="col-lg-4 col-md-6 footer__section">
            <h5 class="footer__nav-title">Полезные ресурсы</h5>
            <a class="footer__nav-link" target="_blank" href="https://rostrud.gov.ru/">Роструд</a>
            <a class="footer__nav-link" target="_blank" href="https://mintrud.gov.ru/">Минтруд России</a>
            <a class="footer__nav-link" target="_blank" href="https://gossluzhba.gov.ru/">Портал госслужбы</a>
            <a class="footer__nav-link" target="_blank" href="https://xn--80akibcicpdbetz7e2g.xn--p1ai/">Онлайнинспекция.рф</a>
            <a class="footer__nav-link" target="_blank" href="http://aiss.gov.ru/">Соотечественники</a>
            <a class="footer__nav-link" target="_blank" href="https://tpprf.ru/ru/">Торгово-промышленная палата РФ</a>
            <a class="footer__nav-link" target="_blank" href="https://www.rospotrebnadzor.ru/">Роспотребнадзор</a>
            <a class="footer__nav-link" target="_blank" href="https://nark.ru/services">Национальная система квалификаций</a>
            <a class="footer__nav-link" target="_blank" href="http://gsz.gov.by/">Государственная служба занятости Республики Беларусь</a>
            <a class="footer__nav-link" target="_blank" href="/rbg/">Работа без границ</a>
            <a class="footer__nav-link" target="_blank" href="https://skillsnet.ru/">Социальная сеть "SkillsNet"</a>
          </section>
        </div>

        <div class="footer__important">
          <a class="footer__nav-link" href="/help/security">Меры безопасности</a>
          <a class="footer__nav-link" href="/help">Техническая поддержка</a>
          <a class="footer__nav-link" href="/information-pages/personal-data-processing-policy">Политика обработки персональных данных</a>
        </div>

        <hr class="footer__separator">

        <div class="row">
          <div class="col-12 col-sm mb-1 footer__copyright">
            &copy;&nbsp;Федеральная служба по труду и занятости —
            <a class="link" href="https://rostrud.gov.ru/" target="_blank" rel="noopener"><span class="link__title">rostrud.ru</span></a>.
            При копировании информации – ссылка на
            <a class="link" href="https://trudvsem.ru/" target="_blank" rel="noopener"><span class="link__title">trudvsem.ru</span></a>
            обязательна
          </div>
          <div class="col-auto">
            <a target="_blank" class="footer__mobile-link" href="https://play.google.com/store/apps/details?id=ru.trudvsem.mobile" title="Загрузите на Google play">
              <svg width="116" height="35" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path class="coloring_fill-neutral-light-text-blind-only" fill-rule="evenodd" clip-rule="evenodd" d="M4.276 0h106.908c2.394 0 4.276 1.972 4.276 4.288v25.727c0 2.402-1.882 4.288-4.276 4.288H4.276C1.882 34.303 0 32.417 0 30.015V4.288C0 1.972 1.882 0 4.276 0zm110.5 4.288c0-1.973-1.625-3.602-3.592-3.602H4.276C2.31.686.684 2.316.684 4.288v25.727c0 1.973 1.625 3.602 3.592 3.602h106.908c1.967 0 3.592-1.63 3.592-3.602V4.288z" fill="#A6A6A6" />
                <path class="coloring_fill-base-dark-text-blind-only" fill-rule="evenodd" clip-rule="evenodd" d="M40.434 10.863c.42-.472.588-1.133.588-1.889v-.378h-2.438v.756h1.85c0 .472-.168.85-.42 1.133-.421.473-.842.662-1.43.662-.505 0-.926-.284-1.346-.662-.42-.377-.589-.944-.589-1.606 0-.66.169-1.228.589-1.605.336-.473.841-.662 1.346-.662.588 0 1.009.19 1.345.662l.42-.473c-.167-.283-.42-.472-.756-.66a2.045 2.045 0 0 0-1.01-.284c-.756 0-1.345.283-1.85.85-.504.567-.756 1.228-.756 2.078 0 .85.252 1.511.756 2.078.505.567 1.094.85 1.85.85.758 0 1.346-.283 1.85-.85zm2.187-4.25h2.27V5.95h-2.943v5.668h2.943v-.756h-2.27V9.068h2.102v-.66h-2.102V6.611zm5.045 5.006h-.672V6.612h-1.43v-.66h3.532v.66h-1.43v5.007zm3.869-5.668v5.668h.672V5.95h-.672zm3.448 5.668h-.589V6.612h-1.43v-.66h3.449v.66h-1.43v5.007zm6.223.094c.757 0 1.346-.283 1.85-.85.505-.567.757-1.228.757-2.078 0-.85-.252-1.511-.757-2.078-.504-.567-1.093-.85-1.85-.85-.757 0-1.346.283-1.85.85-.505.567-.757 1.228-.757 2.078 0 .85.252 1.511.757 2.078s1.093.85 1.85.85zm-1.346-1.322c.337.378.841.661 1.346.661.505 0 1.01-.189 1.345-.661.337-.378.59-.945.59-1.606 0-.661-.169-1.228-.59-1.606-.336-.378-.84-.661-1.345-.661s-1.01.189-1.346.661a2.427 2.427 0 0 0-.588 1.606c0 .661.168 1.228.588 1.606zm4.878-4.44v5.668h.589V6.99l2.607 4.629h.673V5.95h-.673v4.44l-2.439-4.44h-.757zM39.982 20.11v1.515h3.7c-.086.841-.43 1.515-.86 1.935-.517.505-1.377 1.095-2.84 1.095-2.323 0-4.044-1.768-4.044-4.04a4.013 4.013 0 0 1 4.044-4.04c1.204 0 2.15.505 2.84 1.094l1.118-1.094c-.947-.842-2.151-1.515-3.872-1.515-3.097 0-5.765 2.525-5.765 5.555s2.668 5.554 5.765 5.554c1.72 0 2.925-.505 3.958-1.599 1.032-1.01 1.376-2.44 1.376-3.535 0-.336 0-.673-.086-.925h-5.334zm9.55-1.094c-2.064 0-3.7 1.515-3.7 3.619 0 2.02 1.636 3.618 3.7 3.618 2.066 0 3.7-1.514 3.7-3.619 0-2.188-1.634-3.618-3.7-3.618zm4.302 3.619c0-2.105 1.635-3.62 3.7-3.62 2.065 0 3.7 1.431 3.7 3.62 0 2.104-1.635 3.618-3.7 3.618-2.065 0-3.7-1.599-3.7-3.619zm1.635-.085c0 1.263.947 2.188 2.065 2.188 1.119 0 2.065-.925 2.065-2.188 0-1.346-.946-2.188-2.065-2.188-1.118 0-2.065.926-2.065 2.188zm-8.002 0c0 1.263.947 2.188 2.065 2.188 1.119 0 2.065-.925 2.065-2.188 0-1.346-.946-2.188-2.065-2.188-1.118 0-2.065.926-2.065 2.188zm28.48-3.534c1.893 0 2.753 1.43 3.097 2.272l.172.42-4.904 2.02c.43.758.947 1.095 1.807 1.095s1.377-.421 1.807-1.01l1.204.841c-.344.59-1.376 1.6-3.011 1.6-2.065 0-3.614-1.6-3.614-3.62 0-2.188 1.549-3.618 3.442-3.618zm-1.893 3.45c0-1.347 1.118-2.104 1.893-2.104.602 0 1.204.337 1.376.758l-3.269 1.346zm-2.41 3.45H70.01v-10.52h1.635v10.52zm-4.215-6.143c-.43-.42-1.119-.842-1.979-.842-1.807 0-3.528 1.6-3.528 3.62a3.523 3.523 0 0 0 3.528 3.534c.86 0 1.549-.42 1.893-.841h.086v.505c0 1.346-.774 2.104-1.979 2.104-.946 0-1.635-.674-1.807-1.263l-1.377.59c.43.925 1.463 2.103 3.27 2.103 1.893 0 3.442-1.094 3.442-3.703v-6.396h-1.55v.589zM63.47 22.55c0 1.263.947 2.188 2.065 2.188 1.119 0 1.979-.925 1.979-2.188 0-1.262-.86-2.188-1.979-2.188-1.118 0-2.065.926-2.065 2.188zm23.059-7.153h-3.872v10.52h1.635V21.96h2.237c1.807 0 3.527-1.262 3.527-3.282s-1.72-3.282-3.527-3.282zm-2.237 5.05h2.323c1.118 0 1.806-.927 1.892-1.852 0-.758-.688-1.768-1.892-1.768h-2.323v3.62zM96.51 18.93c-1.204 0-2.409.505-2.839 1.6l1.463.589c.344-.59.86-.758 1.462-.758.86 0 1.635.505 1.721 1.347v.084c-.258-.168-.946-.42-1.635-.42-1.548 0-3.097.84-3.097 2.356 0 1.43 1.29 2.356 2.667 2.356 1.119 0 1.635-.505 2.065-1.01h.086v.842h1.549v-4.04c-.172-1.851-1.635-2.946-3.442-2.946zm-1.462 4.882c0 .673.774.926 1.29.926.86 0 1.721-.674 1.893-1.684l-.128-.05c-.375-.15-.716-.286-1.334-.286-.775 0-1.721.252-1.721 1.094zm10.325-4.63l-1.807 4.546h-.086l-1.893-4.545h-1.72l2.838 6.396-1.634 3.535h1.634l4.388-9.931h-1.72zm-12.82 6.734h-1.635v-10.52h1.634v10.52z" fill="#25282B" />
                <path class="coloring_fill-base-dark-text-blind-only" d="M8.715 6.2c-.261.262-.348.7-.348 1.225v19.341c0 .525.174.963.435 1.226l.087.087 10.799-10.852v-.175L8.715 6.2z" fill="url(#paint0_linear)" />
                <path class="coloring_fill-base-dark-text-blind-only" d="M23.171 20.903l-3.57-3.589v-.262l3.57-3.588.087.087 4.268 2.45c1.219.7 1.219 1.838 0 2.539l-4.355 2.363z" fill="url(#paint1_linear)" />
                <path class="coloring_fill-base-dark-text-blind-only" d="M23.258 20.815l-3.657-3.676L8.715 28.08c.436.438 1.045.438 1.829.088l12.714-7.352z" fill="url(#paint2_linear)" />
                <path class="coloring_fill-base-dark-text-blind-only" d="M23.258 13.464L10.544 6.2c-.784-.438-1.393-.35-1.829.087L19.601 17.14l3.657-3.676z" fill="url(#paint3_linear)" />
                <path class="coloring_fill-base-dark-text-blind-only" opacity=".2" d="M23.171 20.728l-12.627 7.176c-.697.438-1.306.35-1.742 0l-.087.088.087.087c.436.35 1.045.438 1.742 0l12.627-7.351z" fill="#F4F7FB" />
                <path class="coloring_fill-base-light-back-blind-only" opacity=".12" fill-rule="evenodd" clip-rule="evenodd" d="M23.171 20.728l4.354-2.45c.523-.35.871-.701.871-1.139 0 .438-.261.876-.87 1.226l-4.268 2.45-.087-.087zM8.382 27.035c.036.366.133.668.333.869h.009c.025.031.051.06.078.087v-.087h-.078a1.696 1.696 0 0 1-.342-.869zm0 0a3.74 3.74 0 0 1-.015-.356v.087c0 .093.005.182.015.269z" fill="#F4F7FB" />
                <path class="coloring_fill-base-light-back-blind-only" opacity=".25" d="M10.545 6.287l16.981 9.715c.523.35.87.7.87 1.137 0-.437-.26-.875-.87-1.225L10.545 6.2c-1.22-.7-2.178-.175-2.178 1.225v.087c0-1.312.958-1.925 2.178-1.225z" fill="#25282B" />
                <defs>
                  <linearGradient id="paint0_linear" x1="14.843" y1="-6.864" x2="-2.471" y2="-2.206" gradientUnits="userSpaceOnUse">
                    <stop stop-color="#00A0FF" />
                    <stop offset=".007" stop-color="#00A1FF" />
                    <stop offset=".26" stop-color="#00BEFF" />
                    <stop offset=".512" stop-color="#00D2FF" />
                    <stop offset=".76" stop-color="#00DFFF" />
                    <stop offset="1" stop-color="#00E3FF" />
                  </linearGradient>
                  <linearGradient id="paint1_linear" x1="29.123" y1="8.273" x2="8.051" y2="8.273" gradientUnits="userSpaceOnUse">
                    <stop stop-color="#FFE000" />
                    <stop offset=".409" stop-color="#FFBD00" />
                    <stop offset=".775" stop-color="orange" />
                    <stop offset="1" stop-color="#FF9C00" />
                  </linearGradient>
                  <linearGradient id="paint2_linear" x1="8.439" y1="11.463" x2="-5.566" y2="34.86" gradientUnits="userSpaceOnUse">
                    <stop stop-color="#FF3A44" />
                    <stop offset="1" stop-color="#C31162" />
                  </linearGradient>
                  <linearGradient id="paint3_linear" x1=".252" y1="3.206" x2="6.457" y2="13.669" gradientUnits="userSpaceOnUse">
                    <stop stop-color="#32A071" />
                    <stop offset=".069" stop-color="#2DA771" />
                    <stop offset=".476" stop-color="#15CF74" />
                    <stop offset=".801" stop-color="#06E775" />
                    <stop offset="1" stop-color="#00F076" />
                  </linearGradient>
                </defs>
              </svg>
            </a>
          </div>
          <div class="col-auto">
            <a target="_blank" class="footer__mobile-link" href="https://apps.apple.com/us/app/%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0-%D1%80%D0%BE%D1%81%D1%81%D0%B8%D0%B8/id1550617710" title="Доступно в App Store">
              <svg width="117" height="35" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path class="coloring_fill-neutral-light-text-blind-only" fill-rule="evenodd" clip-rule="evenodd" d="M4.276 0h106.908c2.394 0 4.276 1.972 4.276 4.288v25.727c0 2.402-1.882 4.288-4.276 4.288H4.276C1.882 34.303 0 32.417 0 30.015V4.288C0 1.972 1.882 0 4.276 0zm110.5 4.288c0-1.973-1.625-3.602-3.592-3.602H4.276C2.31.686.684 2.316.684 4.288v25.727c0 1.973 1.625 3.602 3.592 3.602h106.908c1.967 0 3.592-1.63 3.592-3.602V4.288z" fill="#A6A6A6" />
                <path class="coloring_fill-base-dark-text-blind-only" fill-rule="evenodd" clip-rule="evenodd" d="M23.13 6.693c.147 1.29-.365 2.542-1.096 3.481-.768.921-2.012 1.621-3.219 1.53-.164-1.235.457-2.543 1.134-3.353.768-.903 2.103-1.602 3.181-1.658zm3.95 7.423c-.11.055-2.359 1.4-2.34 4.144.036 3.297 2.87 4.383 2.87 4.383-.018.074-.439 1.584-1.5 3.095-.877 1.344-1.81 2.652-3.29 2.67-.71.018-1.185-.185-1.68-.398-.514-.22-1.048-.449-1.886-.449-.893 0-1.454.239-1.994.468-.467.199-.918.39-1.553.416-1.408.055-2.487-1.418-3.401-2.744-1.847-2.69-3.273-7.607-1.353-10.959.933-1.64 2.633-2.689 4.443-2.726.801-.02 1.573.292 2.247.566.511.207.966.392 1.337.392.334 0 .782-.181 1.302-.392.817-.33 1.814-.734 2.83-.621.713.018 2.688.276 3.968 2.155zM60.936 11.85h-.921V5.857h.921v5.993zm-22.533.056c-.508 0-.96-.018-1.336-.075V6.233a11.17 11.17 0 0 1 1.58-.113c2.126 0 3.104 1.052 3.104 2.762 0 1.954-1.166 3.024-3.348 3.024zM74.667 26.73c.696-.62 1.034-1.428 1.034-2.405 0-.808-.225-1.466-.733-1.992-.47-.545-1.204-1.014-2.2-1.409-.829-.338-1.393-.62-1.694-.902-.357-.281-.526-.676-.526-1.127 0-.413.169-.77.47-1.052.376-.32.884-.488 1.542-.488.828 0 1.561.169 2.22.526l.47-1.503c-.696-.357-1.58-.545-2.633-.545-1.166 0-2.126.3-2.84.902-.715.6-1.073 1.371-1.073 2.33 0 1.465 1.016 2.573 3.047 3.325.753.281 1.28.582 1.6.901.319.32.488.714.488 1.184 0 .526-.188.94-.583 1.259-.395.32-.94.47-1.636.47-.978 0-1.881-.226-2.69-.715l-.433 1.541c.772.47 1.769.714 3.01.714 1.354 0 2.407-.338 3.16-1.014zm-28.91.845h-1.975l-1.09-3.4H38.93l-1.035 3.4h-1.918L39.7 16.002h2.313l3.743 11.573zm-3.385-4.828l-.978-3.025c-.113-.3-.301-1.034-.584-2.18h-.037c-.104.45-.271 1.105-.488 1.953l-.058.227-.959 3.024h3.104zm11.793 3.907c.771-.826 1.166-1.935 1.166-3.363 0-1.258-.32-2.292-.978-3.1-.658-.77-1.486-1.164-2.464-1.164-1.26 0-2.2.507-2.821 1.503h-.038l-.113-1.316h-1.636c.056.94.075 1.86.075 2.743v9H49.2v-4.378c.49.79 1.28 1.184 2.39 1.184 1.034 0 1.88-.376 2.576-1.109zm-.715-3.288c0-.807-.188-1.484-.545-2.01a1.908 1.908 0 0 0-1.618-.826c-.451 0-.865.15-1.241.45-.376.301-.62.696-.734 1.203a2.941 2.941 0 0 0-.094.564v1.39c0 .601.188 1.127.564 1.54.377.414.866.62 1.449.62.696 0 1.241-.263 1.636-.808.395-.526.583-1.24.583-2.123zm10.345 3.288c.772-.826 1.167-1.935 1.167-3.363 0-1.258-.339-2.292-.997-3.1-.659-.77-1.486-1.164-2.464-1.164-1.26 0-2.201.507-2.822 1.503h-.037l-.113-1.316h-1.637c.057.94.076 1.86.076 2.743v9h1.862v-4.378c.489.79 1.279 1.184 2.389 1.184 1.034 0 1.88-.376 2.576-1.109zm-.733-3.288c0-.807-.188-1.484-.546-2.01a1.908 1.908 0 0 0-1.617-.826c-.452 0-.866.15-1.242.45-.376.301-.62.696-.733 1.203a2.488 2.488 0 0 0-.094.564v1.39c0 .601.188 1.127.564 1.54.376.414.865.62 1.448.62.696 0 1.242-.263 1.637-.808.395-.526.583-1.24.583-2.123zm18.79-2.742h-2.05v4.058c0 1.033.357 1.54 1.09 1.54.34 0 .603-.018.828-.094l.057 1.41c-.358.131-.847.206-1.449.206-.733 0-1.297-.225-1.711-.676-.414-.451-.621-1.203-.621-2.255v-4.208h-1.223v-1.39h1.223v-1.522l1.825-.545v2.085h2.05l-.02 1.39zm8.107 5.861c.733-.826 1.11-1.878 1.11-3.156 0-1.24-.358-2.273-1.091-3.062-.734-.808-1.73-1.222-2.953-1.222-1.26 0-2.276.414-3.029 1.24-.752.827-1.128 1.88-1.128 3.175 0 1.24.357 2.274 1.09 3.082.734.807 1.713 1.22 2.935 1.22 1.28 0 2.295-.431 3.066-1.277zm-.809-3.119c0-.77-.17-1.427-.489-1.972-.395-.658-.94-.996-1.674-.996-.752 0-1.317.338-1.712.996-.338.545-.489 1.221-.489 2.01 0 .77.17 1.428.49 1.973.394.657.959.995 1.692.995.715 0 1.26-.338 1.674-1.014.339-.564.508-1.221.508-1.992zm7.373-2.573c.188 0 .395.018.583.056v-1.766c-.15-.019-.3-.038-.47-.038-.47 0-.94.17-1.335.451-.414.32-.734.77-.922 1.315h-.056l-.076-1.596H92.63c.037.883.056 1.747.056 2.63v5.711h1.862V23.18c0-.677.17-1.221.47-1.654.339-.488.847-.732 1.505-.732zm8.897 2.217c0 .281-.019.563-.075.845h-5.568c.019.827.282 1.465.809 1.898.47.394 1.072.582 1.825.582.827 0 1.579-.132 2.257-.395l.282 1.278c-.79.338-1.731.507-2.803.507-1.298 0-2.313-.376-3.047-1.146-.733-.77-1.11-1.785-1.11-3.062 0-1.259.339-2.311 1.035-3.138.715-.902 1.693-1.334 2.915-1.334 1.204 0 2.126.451 2.728 1.334.507.714.752 1.578.752 2.63zm-2.125-1.917c.244.395.376.883.357 1.428h-3.875c.057-.563.245-1.052.546-1.446a1.77 1.77 0 0 1 1.486-.752c.677 0 1.166.244 1.486.77zM37.97 6.89a4.16 4.16 0 0 1 .734-.056c1.354 0 2.069.732 2.069 2.048 0 1.484-.79 2.273-2.182 2.273-.301 0-.508 0-.62-.019V6.89zm6.828 5.054c-1.204 0-1.975-.902-1.975-2.104 0-1.26.79-2.16 2.05-2.16 1.185 0 1.975.845 1.975 2.103 0 1.26-.827 2.16-2.05 2.16zM43.745 9.82c0-.864.432-1.484 1.09-1.484.64 0 1.073.62 1.054 1.465 0 .827-.433 1.484-1.072 1.484-.64 0-1.072-.62-1.072-1.465zm9.95-2.067l-1.28 4.096h-.846l-.526-1.785a15.381 15.381 0 0 1-.339-1.334h-.019a8.16 8.16 0 0 1-.338 1.334l-.564 1.785h-.847l-1.204-4.096h.94l.471 1.954c.113.47.207.902.282 1.315h.02l.008-.04c.074-.332.167-.752.33-1.275l.583-1.954h.752l.564 1.917c.132.47.245.92.339 1.352h.019c.056-.413.15-.864.282-1.352l.508-1.917h.865zm3.818 4.096h.903l-.019-2.442c0-1.071-.564-1.729-1.43-1.729-.545 0-1.053.282-1.297.714h-.02l-.037-.639h-.809c.038.414.038.808.038 1.165v2.93h.922V9.409c0-.526.376-.996.921-.996.546 0 .828.357.828 1.09v2.348zm4.778-2.01c0 1.202.77 2.104 1.975 2.104 1.222 0 2.05-.902 2.05-2.16 0-1.26-.79-2.105-1.975-2.105-1.26 0-2.05.902-2.05 2.16zm2.012-1.503c-.658 0-1.09.62-1.09 1.484 0 .845.432 1.465 1.071 1.465.64 0 1.073-.657 1.073-1.484 0-.845-.414-1.465-1.054-1.465zm5.53 3.043l.075.47.828-.019a6.65 6.65 0 0 1-.056-.977V9.351c0-1.127-.546-1.69-1.618-1.69-.564 0-1.034.112-1.41.356l.187.601c.32-.206.659-.3 1.073-.3.564 0 .846.263.846.808V9.2c-1.524 0-2.408.526-2.408 1.54 0 .696.527 1.203 1.26 1.203.527 0 .922-.188 1.204-.564h.02zm-.056-1.578c-1.016 0-1.524.244-1.524.827 0 .432.263.639.62.639.471 0 .904-.357.904-.827v-.639zm5.285 1.39l.038.658h.846a19.784 19.784 0 0 1-.038-1.109V5.857h-.921v2.386h-.02c-.225-.376-.62-.564-1.165-.564-1.053 0-1.806.902-1.806 2.18 0 1.22.734 2.085 1.73 2.085.621 0 1.054-.263 1.317-.752h.019zm-.094-1.747c0-.582-.376-1.07-.96-1.07-.676 0-1.09.6-1.09 1.446 0 .827.432 1.39 1.072 1.39.583 0 .978-.507.978-1.09v-.676zm4.74.395c0 1.202.771 2.104 1.975 2.104 1.222 0 2.05-.902 2.05-2.16 0-1.26-.79-2.105-1.975-2.105-1.26 0-2.05.902-2.05 2.16zm2.012-1.503c-.658 0-1.072.62-1.072 1.484 0 .845.433 1.465 1.072 1.465.64 0 1.073-.657 1.073-1.484-.02-.845-.433-1.465-1.073-1.465zm6 3.513h.903V9.408c0-1.071-.564-1.729-1.43-1.729-.545 0-1.053.282-1.297.714h-.019l-.038-.639h-.808c.037.414.037.808.037 1.165v2.93h.922V9.409c0-.526.357-.996.903-.996.545 0 .827.357.827 1.09v2.348zm7.054-3.42h-.997v1.992c0 .507.17.752.527.752.169 0 .3-.02.413-.038l.02.695c-.17.075-.415.094-.715.094-.715 0-1.148-.395-1.148-1.428V8.431h-.602v-.677h.602v-.751l.903-.263v1.014h.997v.677zm3.931 3.42h.903V9.389c0-1.071-.527-1.748-1.392-1.748-.545 0-.96.226-1.241.677h-.02V5.857h-.902v6.012h.903v-2.48c0-.658.451-.977.922-.977.545 0 .827.376.827 1.108v2.33zm5.85-1.822h-2.747c.019.77.527 1.22 1.298 1.22.414 0 .771-.074 1.11-.187l.151.639c-.395.169-.847.244-1.374.244-1.279 0-2.05-.808-2.05-2.067 0-1.258.771-2.198 1.938-2.198 1.053 0 1.711.77 1.711 1.954 0 .113 0 .244-.037.395zm-1.731-1.748c.583 0 .903.451.903 1.09h-1.9c.057-.639.471-1.09.997-1.09z" fill="#25282B" />
              </svg>
            </a>
          </div>
        </div>
      </div>
    </footer>
    <th:block th:utext="${@view.getMetrika('ff841f60-2b5a-11e8-a142-3da98a0a212b')}"></th:block>
    <th:block th:replace="fragments/resources :: resources"></th:block>
    <th:block th:replace="fragments/cssdebug"></th:block>
    <script th:if="${@auth.isAuthorized()}">
      if (isCandidate) {
        document.querySelectorAll('.ifcandidate').forEach(function (elem) {
          elem.removeAttribute('hidden')
        })
      } else {
        document.querySelectorAll('.ifemployer').forEach(function (elem) {
          elem.removeAttribute('hidden')
        })
      }
    </script>
  </body>

</html>
