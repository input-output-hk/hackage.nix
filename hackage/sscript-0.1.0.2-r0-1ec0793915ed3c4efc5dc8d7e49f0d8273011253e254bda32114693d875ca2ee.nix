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
      identifier = { name = "sscript"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 <khalil.fazal@uoit.net>";
      maintainer = "khalil.fazal@uoit.net";
      author = "Khalil Fazal";
      homepage = "https://github.com/khalilfazal/sscript#readme";
      url = "";
      synopsis = "Formats Strings with subscript or superscript characters";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "sscript-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."sscript" or (errorHandler.buildDepError "sscript"))
            ];
          buildable = true;
          };
        };
      };
    }