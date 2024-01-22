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
      identifier = { name = "rapid"; version = "0.1.5.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2018 Ertugrul Söylemez";
      maintainer = "Markus Läll <markus.l2ll@gmail.com>";
      author = "Ertugrul Söylemez <esz@posteo.de>";
      homepage = "https://github.com/haskell-rapid/rapid";
      url = "";
      synopsis = "Hot reload and reload-surviving values with GHCi";
      description = "Features:\n\n- Reload individual components of your application as\nyou iterate: improves development experience for\nlong-running applications such as (web) servers or\nuser interfaces by keeping the app running in the\nbackground and allowes reloading components after code\nchanges.\n\n- Reuse expensive resources across reloads: useful in\nbatch-style programs to compute/aquire a resource\nonce, then reuse it across code reloads.\n\nTechnically, this package is a safe and convenient wrapper around\n<https://hackage.haskell.org/package/foreign-store foreign-store>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."foreign-store" or (errorHandler.buildDepError "foreign-store"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }