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
      specVersion = "1.18";
      identifier = { name = "bounded-qsem"; version = "0.1.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "Daniel Casanueva (coding `at` danielcasanueva.eu)";
      author = "Daniel Casanueva (coding `at` danielcasanueva.eu)";
      homepage = "";
      url = "";
      synopsis = "Bounded quantity semaphores.";
      description = "Bounded quantity semaphores, meaning quantity semaphores that have an\nupper-bound in the number of units that can be available at any given time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }