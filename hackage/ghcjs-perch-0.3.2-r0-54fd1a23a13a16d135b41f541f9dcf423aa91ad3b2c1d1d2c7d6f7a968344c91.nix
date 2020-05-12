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
      identifier = { name = "ghcjs-perch"; version = "0.3.2"; };
      license = "MIT";
      copyright = "Copyright © 2015 Arthut S. Fayzrakhmanov. All rights reserved.";
      maintainer = "heraldhoi@gmail.com";
      author = "Arthur S. Fayzrakhmanov";
      homepage = "";
      url = "";
      synopsis = "GHCJS version of Perch library.";
      description = "This package makes the creation of DOM elements easy\nwith a syntax similar to other Haskell HTML generators\nsuch as `blaze-html`, using monoids and monads.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (compiler.isGhcjs && (compiler.version).ge "0.1") (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"));
        buildable = true;
        };
      };
    }