{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsemail";
          version = "2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "Peter Simons,\nAli Abrar,\nGero Kriependorf,\nMarty Pauley";
        homepage = "https://github.com/peti/hsemail#readme";
        url = "";
        synopsis = "Parsec parsers for the RFC2822 Internet Message format";
        description = "Parsec parsers for the Internet Message format defined in RFC 2821 and 2822.";
        buildType = "Simple";
      };
      components = {
        "hsemail" = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
            hsPkgs.parsec
            hsPkgs.mtl
          ];
        };
        tests = {
          "doctest-hsemail" = {
            depends  = [
              hsPkgs.base
              hsPkgs.old-time
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.doctest
            ];
          };
          "test-hsemail" = {
            depends  = [
              hsPkgs.base
              hsPkgs.old-time
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.hspec
              hsPkgs.hsemail
            ];
          };
        };
      };
    }