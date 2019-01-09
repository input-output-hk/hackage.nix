{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { rnaforestry = false; };
    package = {
      specVersion = "1.10.0";
      identifier = { name = "Forestry"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2017";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, Sarah Berkemer, 2017";
      homepage = "https://github.com/choener/Forestry";
      url = "";
      synopsis = "Comparison of trees and forests.";
      description = "Wikipedia on forestry: \"the science and craft of creating,\nmanaging, using, conserving, and repairing forests and\nassociated resources.\"\n\nThis is a modest starting point and provides just:\n\n* forest alignments\n* tree alignments\n\nBuild this library and executable with GHC-8.0.2\n\nTo enable @RNAforestry@, use @cabal new-build -frnaforestry@ or\n@cabal new-configure -w compiler-path -frnaforestry && cabal\nnew-build@. We suggest using @cabal@ with the nix-style local\nbuild options.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.log-domain)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.ADPfusion)
          (hsPkgs.ADPfusionForest)
          (hsPkgs.BiobaseNewick)
          (hsPkgs.BiobaseTypes)
          (hsPkgs.ForestStructures)
          (hsPkgs.FormalGrammars)
          (hsPkgs.PrimitiveArray)
          (hsPkgs.PrimitiveArray-Pretty)
          ];
        };
      exes = {
        "RNAforestry" = {
          depends = (pkgs.lib).optionals (flags.rnaforestry) [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.lens)
            (hsPkgs.log-domain)
            (hsPkgs.streaming)
            (hsPkgs.streaming-bytestring)
            (hsPkgs.streaming-utils)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.BiobaseNewick)
            (hsPkgs.ForestStructures)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.PrimitiveArray-Pretty)
            (hsPkgs.Forestry)
            (hsPkgs.ViennaRNA-extras)
            (hsPkgs.BiobaseXNA)
            (hsPkgs.BiobaseTypes)
            ];
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.Forestry)
            ];
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [ (hsPkgs.base) (hsPkgs.criterion) (hsPkgs.Forestry) ];
          };
        };
      };
    }