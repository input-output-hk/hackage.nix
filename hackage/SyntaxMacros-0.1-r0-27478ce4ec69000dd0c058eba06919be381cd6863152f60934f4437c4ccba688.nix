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
      specVersion = "1.2.3";
      identifier = { name = "SyntaxMacros"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "Universiteit Utrecht";
      maintainer = "Marcos Viera <mviera@fing.edu.uy>";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/Center/SyntaxMacrosForFree ";
      url = "";
      synopsis = "Syntax Macros in the form of an EDSL";
      description = "Library of first-class Syntax Macros";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."TTTAS" or (errorHandler.buildDepError "TTTAS"))
          (hsPkgs."AspectAG" or (errorHandler.buildDepError "AspectAG"))
          (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }