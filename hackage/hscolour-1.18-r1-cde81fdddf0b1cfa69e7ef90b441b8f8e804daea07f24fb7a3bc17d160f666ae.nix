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
      identifier = { name = "hscolour"; version = "1.18"; };
      license = "LicenseRef-GPL";
      copyright = "2003-2011 Malcolm Wallace, University of York; 2006 Bjorn Bringert";
      maintainer = "Malcolm Wallace";
      author = "Malcolm Wallace";
      homepage = "http://code.haskell.org/~malcolm/hscolour/";
      url = "";
      synopsis = "Colourise Haskell code.";
      description = "hscolour is a small Haskell script to colourise Haskell code. It currently\nhas six output formats:\nANSI terminal codes (optionally XTerm-256colour codes),\nHTML 3.2 with <font> tags,\nHTML 4.01 with CSS,\nHTML 4.01 with CSS and mouseover annotations,\nXHTML 1.0 with inline CSS styling,\nLaTeX,\nand mIRC chat codes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "HsColour" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }