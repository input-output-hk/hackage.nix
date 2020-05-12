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
      specVersion = "1.6";
      identifier = { name = "ditto"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2012 Jeremy Shaw, Jasper Van der Jeugt, SeeReason Partners LLC,\n2019 Zachary Churchill";
      maintainer = "Zachary Churchill <zacharyachurchill@gmail.com>";
      author = "Jeremy Shaw, Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "";
      url = "";
      synopsis = "ditto is a type-safe HTML form generation and validation library";
      description = "ditto follows in the footsteps of formlets and\ndigestive-functors <= 0.2. It provides a\ntype-safe and composable method for generating\nan HTML form that includes validation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }