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
      identifier = { name = "fast-nats"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "mckean.kylej@gmail.com";
      author = "Kyle McKean";
      homepage = "";
      url = "";
      synopsis = "Natural Numbers with no overhead";
      description = "Dependent Singleton like natural numbers without the\nSingleton dependency. The implementation uses inductive\nnaturals at the type level but machine integers at the term\nlevel.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }