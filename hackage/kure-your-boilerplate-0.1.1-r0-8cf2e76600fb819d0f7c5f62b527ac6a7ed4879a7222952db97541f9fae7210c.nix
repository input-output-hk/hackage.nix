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
      specVersion = "1.6";
      identifier = { name = "kure-your-boilerplate"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Andy Gill";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill";
      homepage = "http://ittc.ku.edu/~andygill/kure.php";
      url = "";
      synopsis = "Generator for Boilerplate KURE Combinators";
      description = "KURE-your-boilerplate is a Template Haskell powered library for generating shallow tree walking combinators,\nfor use with the KURE DSL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."kure" or (errorHandler.buildDepError "kure"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }