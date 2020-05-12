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
      identifier = { name = "pipes-rt"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Greg Hale";
      maintainer = "Greg Hale <imalsogreg@gmail.com>";
      author = "Greg Hale";
      homepage = "http://github.com/ImAlsoGreg/pipes-rt";
      url = "";
      synopsis = "A few pipes to control the timing of yields";
      description = "Use this library to yield values downstream according to different timing rules.  For example, use the relTimeCat pipe, and your data will be yielded according to their timestamps.  Or use poissonCat to yield values with poisson timing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ];
        buildable = true;
        };
      exes = {
        "PipesRealTimeExample" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-rt" or (errorHandler.buildDepError "pipes-rt"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }