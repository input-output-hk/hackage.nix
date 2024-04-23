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
      identifier = { name = "hascal"; version = "1.4.1"; };
      license = "LicenseRef-GPL";
      copyright = "2012 Mekeor Melire";
      maintainer = "Mekeor Melire <mekeor.melire@googlemail.com>";
      author = "Mekeor Melire <mekeor.melire@googlemail.com>";
      homepage = "http://darcsden.com/mekeor/hascal";
      url = "";
      synopsis = "A minimalistic but extensible and precise calculator";
      description = "Hascal is a minimalistic calculator with infix-operations\nsupporting addition, subtraction, division, multiplication,\nexponentiation and logarithming.\nFuthermore, it's easy to add custom operators.";
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