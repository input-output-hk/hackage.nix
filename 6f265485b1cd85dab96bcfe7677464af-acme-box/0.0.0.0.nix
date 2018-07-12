{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "acme-box";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tristanjwebb@gmail.com";
        author = "Tristan Webb";
        homepage = "http://github.com/drwebb/acme-box";
        url = "";
        synopsis = "A full featured empty project";
        description = "An Acme box brings you the finest in empty Haskell\nprojects. It comes completely empty, and is\nguaranteed to build under even the harshest of\nconditions. Made of rugged recycled type safe\ncode, an Acme box comes ready to compile.";
        buildType = "Simple";
      };
      components = {
        "acme-box" = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          "acme-box" = {
            depends  = [
              hsPkgs.base
              hsPkgs.acme-box
            ];
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.acme-box
            ];
          };
        };
      };
    }