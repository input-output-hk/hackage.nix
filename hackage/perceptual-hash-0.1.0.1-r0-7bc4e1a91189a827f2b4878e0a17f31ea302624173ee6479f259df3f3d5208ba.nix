{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "perceptual-hash"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Find duplicate images";
      description = "Find similar images using perceptual hashes";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hip)
          (hsPkgs.vector-algorithms)
          (hsPkgs.vector)
          (hsPkgs.primitive)
          ];
        };
      exes = {
        "phash" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.perceptual-hash)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.par-traverse)
            (hsPkgs.stm)
            ];
          };
        };
      benchmarks = {
        "phash-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.perceptual-hash)
            (hsPkgs.criterion)
            (hsPkgs.hip)
            ];
          };
        };
      };
    }