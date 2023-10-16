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
      identifier = { name = "strict-base-types"; version = "0.8"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2008 by Roman Leshchinskiy\n(c) 2013-2014 by Simon Meier";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>, Oleg Grenrus <oleg.grenrus@iki.fi>, Simon Meier <iridcode@gmail.com>";
      author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>,\nSimon Meier <iridcode@gmail.com>";
      homepage = "https://github.com/haskell-strict/strict";
      url = "";
      synopsis = "Strict variants of the types provided in base.";
      description = "Since version 0.7 the functionality in this package\nhave been merged into `strict`, `aeson` and `quickcheck-instances`\npackages, and lens functionality moved into `strict-lens` package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."strict-lens" or (errorHandler.buildDepError "strict-lens"))
          ];
        buildable = true;
        };
      };
    }