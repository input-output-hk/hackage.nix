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
      identifier = { name = "clash-prelude"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2013-2014 University of Twente";
      maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
      author = "Christiaan Baaij";
      homepage = "http://clash.ewi.utwente.nl/";
      url = "";
      synopsis = "CAES Language for Synchronous Hardware - Prelude library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          ];
        buildable = true;
        };
      };
    }