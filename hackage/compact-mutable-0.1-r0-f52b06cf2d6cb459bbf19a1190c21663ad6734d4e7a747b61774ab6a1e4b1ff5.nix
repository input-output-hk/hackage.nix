{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "compact-mutable"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/compact-mutable#readme";
      url = "";
      synopsis = "Mutable arrays living on the compact heap";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.prim-array)
          (hsPkgs.ghc-prim)
          (hsPkgs.ghc-compact)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.prim-array)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.primitive)
            (hsPkgs.compact-mutable)
            (hsPkgs.ghc-compact)
            (hsPkgs.ghc-prim)
            ];
          };
        };
      };
    }