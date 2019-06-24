{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "lens-process"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Emily Pillmore";
      maintainer = "Emily Pillmore <emilypi@cohomolo.gy>";
      author = "Emily Pillmore";
      homepage = "https://github.com/emilypi/lens-process";
      url = "";
      synopsis = "Optics for system processes";
      description = "'lens-process' is a set of multi-purpose optics and convenience\ncombinators for working with the `process` library, including\na more well-typed api for the parts that can be typed.";
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
          (hsPkgs.filepath)
          (hsPkgs.lens)
          (hsPkgs.process)
          ];
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.lens)
            (hsPkgs.lens-process)
            (hsPkgs.process)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.lens)
            (hsPkgs.lens-process)
            (hsPkgs.process)
            ];
          };
        };
      };
    }