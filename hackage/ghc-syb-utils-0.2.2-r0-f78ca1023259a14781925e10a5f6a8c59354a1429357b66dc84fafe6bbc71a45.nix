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
      identifier = { name = "ghc-syb-utils"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Claus Reinke 2008";
      maintainer = "Thomas Schilling <nominolo@googlemail.com>";
      author = "Claus Reinke";
      homepage = "http://github.com/nominolo/ghc-syb";
      url = "";
      synopsis = "Scrap Your Boilerplate utilities for the GHC API.";
      description = "Scrap Your Boilerplate utilities for the GHC API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
        ] ++ (if compiler.isGhc && compiler.version.ge "7.0"
          then [ (hsPkgs."ghc" or (errorHandler.buildDepError "ghc")) ]
          else [
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-syb" or (errorHandler.buildDepError "ghc-syb"))
          ]);
        buildable = true;
      };
    };
  }