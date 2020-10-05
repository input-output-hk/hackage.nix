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
      identifier = { name = "strict-optics"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2008 by Roman Leshchinskiy\n(c) 2013-2014 by Simon Meier";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus>\nRoman Leshchinskiy <rl@cse.unsw.edu.au>,\nSimon Meier <iridcode@gmail.com>";
      homepage = "https://github.com/haskell-strict/strict";
      url = "";
      synopsis = "Optics for types in strict package";
      description = "Optics for types in strict package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          ];
        buildable = true;
        };
      };
    }