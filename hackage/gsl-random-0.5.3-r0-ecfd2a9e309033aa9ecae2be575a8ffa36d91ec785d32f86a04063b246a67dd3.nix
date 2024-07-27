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
      specVersion = "1.24";
      identifier = { name = "gsl-random"; version = "0.5.3"; };
      license = "BSD-3-Clause";
      copyright = "Patrick Perry,\nTracy Wadleigh";
      maintainer = "Patrick Perry <patperry@gmail.com>";
      author = "Patrick Perry,\nTracy Wadleigh";
      homepage = "http://github.com/patperry/hs-gsl-random";
      url = "";
      synopsis = "Bindings the the GSL random number generation facilities.";
      description = "Bindings to the GNU Scientific Library random and quasi-random number\ngenerators and random distributions.\n";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }