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
      identifier = { name = "componentm-devel"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "© 2017-current Roman Gonzalez";
      maintainer = "open-source@roman-gonzalez.info";
      author = "Roman Gonzalez";
      homepage = "https://github.com/roman/Haskell-componentm#readme";
      url = "";
      synopsis = "Easy REPL driven development using ComponentM";
      description = "This library enhances the componentm with auto-reloading\ncapabilites for your application, allowing to ensure cleanup\nof resources when doing REPL driven development, or when using\nghcid";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."componentm" or (errorHandler.buildDepError "componentm"))
          (hsPkgs."foreign-store" or (errorHandler.buildDepError "foreign-store"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."teardown" or (errorHandler.buildDepError "teardown"))
          ];
        buildable = true;
        };
      };
    }