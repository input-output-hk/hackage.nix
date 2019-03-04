{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "fedora-haskell-tools"; version = "0.7"; };
      license = "GPL-3.0-only";
      copyright = "2014-2019 Jens Petersen <petersen@fedoraproject.org>";
      maintainer = "Jens Petersen <petersen@fedoraproject.org>";
      author = "Jens Petersen <petersen@fedoraproject.org>";
      homepage = "https://github.com/fedora-haskell/fedora-haskell-tools";
      url = "";
      synopsis = "Building and maintenance tools for Fedora Haskell";
      description = "Tools for building and managing Fedora Haskell packages.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fhpkg" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.csv)
            (hsPkgs.directory)
            (hsPkgs.fedora-dists)
            (hsPkgs.filepath)
            (hsPkgs.HTTP)
            (hsPkgs.process)
            (hsPkgs.simple-cmd)
            (hsPkgs.split)
            (hsPkgs.time)
            (hsPkgs.unix)
            ];
          };
        "fhbz" = {
          depends = [ (hsPkgs.base) (hsPkgs.fedora-dists) (hsPkgs.time) ];
          };
        "fhmock" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fedora-dists)
            (hsPkgs.optparse-applicative)
            (hsPkgs.simple-cmd)
            (hsPkgs.simple-cmd-args)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups);
          };
        };
      };
    }