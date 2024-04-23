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
      specVersion = "1.8";
      identifier = { name = "hascal"; version = "2.0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "2012 Mekeor Melire";
      maintainer = "Mekeor Melire <mekeor.melire@googlemail.com>";
      author = "Mekeor Melire <mekeor.melire@googlemail.com>";
      homepage = "http://darcsden.com/mekeor/hascal";
      url = "";
      synopsis = "A minimalistic but extensible and precise calculator";
      description = "Hascal is both a simple but extendable calculator library for\nHaskell as well as a command-line program using this library.\n\nHascal supports addition, subtraction, multiplication, division,\nexponentiation, and logarithm, while it's easy to add custom\noperators.\n\nHascal also supports complex numbers. Hascal can work at an\narbitrary precision. However, Hascal does not support\nparenthesis.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "hascal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."numbers" or (errorHandler.buildDepError "numbers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }