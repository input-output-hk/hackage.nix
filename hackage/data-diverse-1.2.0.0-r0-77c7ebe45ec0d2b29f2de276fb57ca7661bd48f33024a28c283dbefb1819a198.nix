{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "data-diverse"; version = "1.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/data-diverse#readme";
      url = "";
      synopsis = "Extensible records and polymorphic variants.";
      description = "\"Data.Diverse.Many\" is an extensible record for any size encoded efficiently as (Seq Any).\n\"Data.Diverse.Which\" is a polymorphic variant of possibilities encoded as (Int, Any).\nProvides getters, setters, projection, injection, folds, and catamorphisms;\naccessed by type, index or label.\nRefer to [ManySpec.hs](https://github.com/louispan/data-diverse/blob/master/test/Data/Diverse/ManySpec.hs) and [WhichSpec.hs](https://github.com/louispan/data-diverse/blob/master/test/Data/Diverse/WhichSpec.hs) for example usages.\nIso, Lens and Prisms are provided in [data-diverse-lens](http://hackage.haskell.org/package/data-diverse-lens)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          ];
        buildable = true;
        };
      tests = {
        "data-diverse-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-diverse" or ((hsPkgs.pkgs-errors).buildDepError "data-diverse"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "data-diverse-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-diverse" or ((hsPkgs.pkgs-errors).buildDepError "data-diverse"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }