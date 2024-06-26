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
      specVersion = "1.8";
      identifier = { name = "schedyield"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mjgajda@googlemail.com";
      author = "Michal J. Gajda";
      homepage = "";
      url = "";
      synopsis = "Exposes standard POSIX function sched_yield.";
      description = "sched_yield is useful, when starting many processes, and waiting for them to complete. It yields CPU time (forces context switch.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }