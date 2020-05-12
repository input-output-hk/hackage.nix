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
      identifier = { name = "sym-plot"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anders.claesson@gmail.com";
      author = "Anders Claesson";
      homepage = "http://github.com/akc/sym-plot";
      url = "";
      synopsis = "Plot permutations; an addition to the sym package";
      description = "This packade adds plots to the sym package. It has been factored out\nof that package because diagrams is a rather heavy dependency.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sym" or (errorHandler.buildDepError "sym"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
          ];
        buildable = true;
        };
      };
    }