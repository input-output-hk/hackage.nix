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
      specVersion = "2.2";
      identifier = { name = "varargs"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2025 Ian Duncan";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "https://github.com/iand675/varargs#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/iand675/varargs#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "varargs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."varargs" or (errorHandler.buildDepError "varargs"))
          ];
          buildable = true;
        };
      };
    };
  }