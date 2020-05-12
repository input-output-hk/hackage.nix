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
      identifier = { name = "data-diverse-lens"; version = "3.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/data-diverse-lens#readme";
      url = "";
      synopsis = "Isos & Lens for Data.Diverse.Many and Prisms for Data.Diverse.Which";
      description = "Isos & Lens for Data.Diverse.Many and Prisms for Data.Diverse.Which\nRefer to [ManySpec.hs](https://github.com/louispan/data-diverse-lens/blob/master/test/Data/Diverse/Lens/ManySpec.hs) and [WhichSpec.hs](https://github.com/louispan/data-diverse-lens/blob/master/test/Data/Diverse/Lens/WhichSpec.hs) for example usages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-diverse" or (errorHandler.buildDepError "data-diverse"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      tests = {
        "data-diverse-lens-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-diverse" or (errorHandler.buildDepError "data-diverse"))
            (hsPkgs."data-diverse-lens" or (errorHandler.buildDepError "data-diverse-lens"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            ];
          buildable = true;
          };
        };
      };
    }