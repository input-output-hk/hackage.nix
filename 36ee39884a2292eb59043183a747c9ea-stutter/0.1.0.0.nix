{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stutter";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "(c) 2017 Nicolas Mattia";
        maintainer = "nicolas@nmattia.com";
        author = "Nicolas Mattia";
        homepage = "https://github.com/nmattia/stutter#readme";
        url = "";
        synopsis = "(Stutter Text|String)-Utterer";
        description = "CLI regex-like string generator";
        buildType = "Simple";
      };
      components = {
        "stutter" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-combinators
            hsPkgs.conduit-extra
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.text
          ];
        };
        exes = {
          "stutter" = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.optparse-applicative
              hsPkgs.stutter
              hsPkgs.text
            ];
          };
        };
        tests = {
          "stutter-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.snipcheck
              hsPkgs.stutter
              hsPkgs.tasty
              hsPkgs.tasty-ant-xml
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }