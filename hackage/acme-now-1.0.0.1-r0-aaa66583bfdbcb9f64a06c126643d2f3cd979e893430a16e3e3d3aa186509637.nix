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
      specVersion = "0";
      identifier = { name = "acme-now"; version = "1.0.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "sjurberengal@gmail.com";
      author = "Sjur Gjøstein Karevoll";
      homepage = "";
      url = "";
      synopsis = "An interface to the philosophical and metaphysical \"now\"";
      description = "The ancient greek philosopher Parmenides provided a proof that change is impossible. It therefore stands to reason that there is only one moment in time, and it never changes. This library provides an interface to that moment, allowing it to be used in computations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }