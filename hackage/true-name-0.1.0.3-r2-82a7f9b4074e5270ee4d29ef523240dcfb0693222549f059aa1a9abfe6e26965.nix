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
      identifier = { name = "true-name"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "© 2014−2017 Liyang HU";
      maintainer = "true-name@liyang.hu";
      author = "Liyang HU";
      homepage = "https://github.com/liyang/true-name";
      url = "";
      synopsis = "Template Haskell hack to violate module abstractions";
      description = "<http://tvtropes.org/pmwiki/pmwiki.php/Main/IKnowYourTrueName Knowing a true name gives one power over its owner>.\n\nA Template Haskell hack to get unexported @Name@s―be they types, data\nconstructors, record fields or class methods―a slightly less unsafe way\nto violate another module's abstractions than @unsafeCoerce@.\n\nA few <https://github.com/liyang/true-name/blob/master/test/sanity.hs quick examples>.\n\nI'm too lazy to keep a changelog, but I do write <https://github.com/liyang/true-name/commits/master detailed commit messages>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "sanity" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."true-name" or (errorHandler.buildDepError "true-name"))
          ];
          buildable = true;
        };
      };
    };
  }