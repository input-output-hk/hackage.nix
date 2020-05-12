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
      specVersion = "0";
      identifier = { name = "parse-dimacs"; version = "1.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Denis Bueno <dbueno@gmail.com>";
      author = "Denis Bueno";
      homepage = "";
      url = "";
      synopsis = "DIMACS CNF parser library";
      description = "A DIMACS CNF parser library, implemented with Parsec.";
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
      };
    }