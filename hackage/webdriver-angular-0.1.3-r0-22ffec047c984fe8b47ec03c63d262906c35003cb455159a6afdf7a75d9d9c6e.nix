{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "webdriver-angular"; version = "0.1.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "John Lenz <lenz@math.uic.edu>";
      author = "John Lenz <lenz@math.uic.edu>";
      homepage = "https://bitbucket.org/wuzzeb/webdriver-utils";
      url = "";
      synopsis = "Webdriver actions to assist with testing a webpage which uses Angular.Js";
      description = "For end to end testing of web applications from Haskell, the\n<https://hackage.haskell.org/package/webdriver webdriver> package is a great tool but\ndoes not provide specific commands to make testing a webpage using\n<http://angularjs.org/ AngularJS> easier.  The\n<https://github.com/angular/protractor protractor> project provides Angular-specific\nwebdriver commands but the test code must be written in javascript.  This package\nfills the gap by reusing some of the protractor code to allow end to end tests of Angular\napplications to be written in Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."webdriver" or ((hsPkgs.pkgs-errors).buildDepError "webdriver"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."language-javascript" or ((hsPkgs.pkgs-errors).buildDepError "language-javascript"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-webdriver" or ((hsPkgs.pkgs-errors).buildDepError "hspec-webdriver"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."wai-app-static" or ((hsPkgs.pkgs-errors).buildDepError "wai-app-static"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."webdriver" or ((hsPkgs.pkgs-errors).buildDepError "webdriver"))
            (hsPkgs."webdriver-angular" or ((hsPkgs.pkgs-errors).buildDepError "webdriver-angular"))
            ];
          buildable = true;
          };
        };
      };
    }