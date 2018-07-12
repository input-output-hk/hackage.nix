{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "conduit-iconv";
          version = "0.1.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "slomo@coaxion.net";
        author = "Sebastian Dröge";
        homepage = "https://github.com/sdroege/conduit-iconv";
        url = "";
        synopsis = "Conduit for character encoding conversion.";
        description = "@conduit-iconv@ provides a Conduit for character encoding\nconversion, based on the iconv library.";
        buildType = "Simple";
      };
      components = {
        "conduit-iconv" = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.bytestring
          ];
          libs = pkgs.lib.optional (system.isOsx || system.isFreebsd) pkgs.iconv;
        };
        tests = {
          "Tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.mtl
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.conduit
              hsPkgs.conduit-iconv
            ];
          };
        };
        benchmarks = {
          "Benchmarks" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.conduit
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.conduit-iconv
              hsPkgs.criterion
            ];
          };
        };
      };
    }