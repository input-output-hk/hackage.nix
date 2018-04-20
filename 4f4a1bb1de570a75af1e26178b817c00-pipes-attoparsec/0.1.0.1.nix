{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pipes-attoparsec";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Paolo Capriotti 2012-2012,\nRenzo Carbonara 2012-";
        maintainer = "renzocarbonaraλgmail.com";
        author = "Paolo Capriotti, Renzo Carbonara";
        homepage = "https://github.com/k0001/pipes-attoparsec";
        url = "";
        synopsis = "Utilities to convert an Attoparsec parser into a pipe Pipe.";
        description = "Utilities to convert an Attoparsec 'Data.Attoparsec.Types.Parser' into\na 'Control.Proxy.Synonym.Pipe'.\n\nSee \"Control.Proxy.Attoparsec.Tutorial\" for an extensive introduction with\nexamples.\n\nVersion 0.1.* is not backwards compatible with previous versions.";
        buildType = "Simple";
      };
      components = {
        pipes-attoparsec = {
          depends  = [
            hsPkgs.base
            hsPkgs.pipes
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.pipes
              hsPkgs.attoparsec
              hsPkgs.text
              hsPkgs.pipes-attoparsec
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }