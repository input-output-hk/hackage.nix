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
      identifier = { name = "tiny-scheduler"; version = "0.1.4.1"; };
      license = "BSD-3-Clause";
      copyright = "None";
      maintainer = "functor.soup@gmail.com";
      author = "Functor soup";
      homepage = "https://github.com/functor-soup/tiny-scheduler#readme";
      url = "";
      synopsis = "tiny no-brainer job scheduler";
      description = "this is a tiny library to make scheduling jobs to run at predetermined intervals, easier";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }