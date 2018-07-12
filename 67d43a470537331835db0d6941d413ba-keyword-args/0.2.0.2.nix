{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "keyword-args";
          version = "0.2.0.2";
        };
        license = "MIT";
        copyright = "2015 Stack Builders Inc.";
        maintainer = "justin@stackbuilders.com";
        author = "Justin Leitgeb";
        homepage = "https://github.com/stackbuilders/keyword-args";
        url = "";
        synopsis = "Extract data from a keyword-args config file format";
        description = "Extracts data from a configuration file with keywords\nseparated fram arguments by one or more spaces. Removes\ncomments and unnecessary whitespace.";
        buildType = "Simple";
      };
      components = {
        "keyword-args" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.containers
          ];
        };
        exes = {
          "keyword-args" = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.cassava
              hsPkgs.bytestring
            ];
          };
        };
        tests = {
          "keyword-args-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.parseerror-eq
            ];
          };
        };
      };
    }