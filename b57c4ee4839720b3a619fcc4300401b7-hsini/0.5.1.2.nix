{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsini";
          version = "0.5.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Magnus Therning <magnus@therning.org>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "ini configuration files";
        description = "Library for reading and writing configuration files in INI format (see <https://en.wikipedia.org/wiki/INI_file>).";
        buildType = "Simple";
      };
      components = {
        "hsini" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.parsec
          ];
        };
        tests = {
          "hsini-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
            ];
          };
        };
      };
    }