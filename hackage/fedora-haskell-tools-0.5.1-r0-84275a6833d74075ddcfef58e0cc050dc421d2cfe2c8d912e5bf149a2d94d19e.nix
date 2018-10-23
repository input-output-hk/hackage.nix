{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "fedora-haskell-tools";
        version = "0.5.1";
      };
      license = "GPL-3.0-only";
      copyright = "2014-2017 Jens Petersen <petersen@fedoraproject.org>";
      maintainer = "Jens Petersen <petersen@fedoraproject.org>";
      author = "Jens Petersen <petersen@fedoraproject.org>";
      homepage = "https://github.com/fedora-haskell/fedora-haskell-tools";
      url = "";
      synopsis = "Building and managing tools for Fedora Haskell";
      description = "Tools for building and managing Fedora Haskell packages.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "fhbuild" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.unix)
          ];
        };
        "fhbz" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.time)
          ];
        };
        "fhpkg" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }