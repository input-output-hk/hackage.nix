{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pretty-display"; version = "0.1.8"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2016 Justin Sermeno";
      maintainer = "Justin Sermeno";
      author = "Justin Sermeno";
      homepage = "https://github.com/jsermeno/pretty-display#readme";
      url = "";
      synopsis = "Typeclass for human-readable display";
      description = "<<https://travis-ci.org/jsermeno/pretty-display.svg?branch=master>>\n<<https://img.shields.io/badge/language-Haskell-blue.svg>>\n<<http://img.shields.io/badge/license-BSD3-brightgreen.svg>>\n\nIn haskell the @Show@ typeclass is used to display a\nsyntactically correct Haskell expression. However, there\nare times when you want to provide a richer display for a\nvalue while still retaining the benefits of having\nderived @Show@ instances. This can be especially useful\nwhen working interactively in ghci. @Text.Display@\nprovides a tiny registered package with the @Display@\ntypeclass just for this purpose.\n\n<<https://cloud.githubusercontent.com/assets/197051/20434593/74a2b66c-ad76-11e6-9eef-cff6352d08b1.png>>\n\nFor examples visit the <https://github.com/githubuser/pretty-display#readme README>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          ];
        buildable = true;
        };
      exes = {
        "pretty-display-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty-display" or (errorHandler.buildDepError "pretty-display"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            ];
          buildable = true;
          };
        };
      tests = {
        "pretty-display-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty-display" or (errorHandler.buildDepError "pretty-display"))
            ];
          buildable = true;
          };
        };
      };
    }