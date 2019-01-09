{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hcobs"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Dario Bertini";
      maintainer = "berdario@gmail.com";
      author = "Dario Bertini";
      homepage = "https://github.com/berdario/hcobs#readme";
      url = "";
      synopsis = "An implementation of the Consistent Overhead Byte Stuffing algorithm";
      description = "An implementation of the Consistent Overhead Byte Stuffing algorithm.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.reflection)
          (hsPkgs.ghc-prim)
          ];
        };
      tests = {
        "hcobs-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hcobs)
            (hsPkgs.hedgehog)
            (hsPkgs.bytestring)
            (hsPkgs.reflection)
            (hsPkgs.mtl)
            (hsPkgs.mmorph)
            (hsPkgs.ghc-prim)
            ];
          };
        "hcobs-weigh" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hcobs)
            (hsPkgs.weigh)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.base64-bytestring)
            ];
          };
        };
      benchmarks = {
        "mainbench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.reflection)
            (hsPkgs.ghc-prim)
            (hsPkgs.criterion)
            (hsPkgs.base64-bytestring)
            ];
          };
        };
      };
    }