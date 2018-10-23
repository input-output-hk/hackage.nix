{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "webdriver-angular";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "John Lenz <lenz@math.uic.edu>";
      author = "John Lenz <lenz@math.uic.edu>";
      homepage = "https://bitbucket.org/wuzzeb/hs-webdriver-angular";
      url = "";
      synopsis = "Webdriver actions to assist with testing a webpage which uses Angular.Js";
      description = "For end to end testing of web applications from Haskell, the\n<https://hackage.haskell.org/package/webdriver webdriver> package is a great tool but\ndoes not provide specific commands to make testing a webpage using\n<http://angularjs.org/ AngularJS> easier.  The\n<https://github.com/angular/protractor protractor> project provides Angular-specific\nwebdriver commands but the test code must be written in javascript.  This package\nfills the gap by reusing some of the protractor code to allow end to end tests of Angular\napplications to be written in Haskell.";
      buildType = "Simple";
    };
    components = {
      "webdriver-angular" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.webdriver)
          (hsPkgs.aeson)
          (hsPkgs.language-javascript)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.lifted-base)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.warp)
            (hsPkgs.wai-app-static)
            (hsPkgs.webdriver)
            (hsPkgs.webdriver-angular)
          ];
        };
      };
    };
  }