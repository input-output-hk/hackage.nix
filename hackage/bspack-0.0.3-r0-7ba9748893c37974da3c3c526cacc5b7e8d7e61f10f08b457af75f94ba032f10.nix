{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bspack"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014 Nicolas DI PRIMA";
      maintainer = "nicolas@di-prima.fr";
      author = "Nicolas DI PRIMA";
      homepage = "https://github.com/NicolasDP/hs-bspack";
      url = "";
      synopsis = "A simple and fast bytestring packer";
      description = "A simple and fast bytestring packer";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.ghc-prim) ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.bspack)
            ];
          };
        };
      benchmarks = {
        "bench-bspack" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.bspack)
            (hsPkgs.blaze-builder)
            ];
          };
        };
      };
    }