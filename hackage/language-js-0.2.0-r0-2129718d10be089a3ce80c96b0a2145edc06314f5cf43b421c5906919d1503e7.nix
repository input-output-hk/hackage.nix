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
      identifier = { name = "language-js"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Bruno Dias";
      maintainer = "Bruno Dias <dias.h.bruno@gmail.com>";
      author = "Bruno Dias <dias.h.bruno@gmail.com>";
      homepage = "https://github.com/diasbruno/language-js#readme";
      url = "";
      synopsis = "javascript parser for es6 and es7.";
      description = "Please see the README on Github at <https://github.com/diasbruno/language-js#README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      tests = {
        "language-js-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."language-js" or (errorHandler.buildDepError "language-js"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }