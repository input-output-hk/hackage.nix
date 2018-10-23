{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "package-o-tron";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Jake Wheat 2012";
      maintainer = "jakewheatmail@gmail.com";
      author = "Jake Wheat";
      homepage = "";
      url = "";
      synopsis = "Utilities for working with cabal packages and your package database";
      description = "Utility to help managing Makefiles for Haskell projects, a cabal lint\nwhich can check the other-modules and build-deps\nsections in your cabal files, and a quick command\nthat can show the direct package dependencies of\na set of Haskell source files. See the README in\nthe repo for more information:\n<https://github.com/JakeWheat/package-o-tron>.";
      buildType = "Simple";
    };
    components = {
      "package-o-tron" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.groom)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.filemanip)
        ];
      };
      exes = {
        "Makefilerize" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.groom)
            (hsPkgs.process)
            (hsPkgs.filemanip)
          ];
        };
        "CabalLint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.groom)
            (hsPkgs.process)
            (hsPkgs.filemanip)
            (hsPkgs.Cabal)
            (hsPkgs.packdeps)
          ];
        };
        "ShowPackages" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.groom)
            (hsPkgs.process)
            (hsPkgs.filemanip)
          ];
        };
      };
    };
  }