{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "markov-chain-usage-model"; version = "0.0.0"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (C) 2018-2019, HERE Europe B.V.";
      maintainer = "stevan.andjelkovic@here.com";
      author = "Stevan Andjelkovic";
      homepage = "https://github.com/advancedtelematic/markov-chain-usage-model#readme";
      url = "";
      synopsis = "Computations for Markov chain usage models";
      description = "Please see the README on GitHub at <https://github.com/advancedtelematic/markov-chain-usage-model#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.matrix) (hsPkgs.vector) ];
        };
      tests = {
        "markov-chain-usage-model-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.markov-chain-usage-model)
            (hsPkgs.matrix)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hunit)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }