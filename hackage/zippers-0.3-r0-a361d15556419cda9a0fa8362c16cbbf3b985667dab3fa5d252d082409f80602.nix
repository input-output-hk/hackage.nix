{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "zippers"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/zippers/";
      url = "";
      synopsis = "Traversal based zippers";
      description = "Traversal based zippers.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.fail)
          (hsPkgs.lens)
          (hsPkgs.profunctors)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          ];
        };
      tests = {
        "doctests" = {
          depends = [ (hsPkgs.base) (hsPkgs.doctest) (hsPkgs.zippers) ];
          };
        };
      benchmarks = {
        "zipper" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.lens)
            (hsPkgs.zippers)
            ];
          };
        };
      };
    }