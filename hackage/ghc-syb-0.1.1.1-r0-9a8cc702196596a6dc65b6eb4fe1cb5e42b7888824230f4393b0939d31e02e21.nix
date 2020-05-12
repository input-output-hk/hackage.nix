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
      identifier = { name = "ghc-syb"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Claus Reinke 2008";
      maintainer = "Thomas Schilling <nominolo@googlemail.com>";
      author = "Claus Reinke";
      homepage = "http://github.com/nominolo/ghc-syb";
      url = "";
      synopsis = "SYB instances for the GHC API";
      description = "Scrap Your Boilerplate instances and utils for the GHC API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          ];
        buildable = true;
        };
      };
    }