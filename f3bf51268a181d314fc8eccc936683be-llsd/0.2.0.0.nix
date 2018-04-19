{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "llsd";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "2009-2010 Linden Lab";
        maintainer = "bos@lindenlab.com";
        author = "Mark Lentczner";
        homepage = "http://wiki.secondlife.com/wiki/LLSD";
        url = "";
        synopsis = "An implementation of the LLSD data system";
        description = "An implementation of the LLSD data system";
        buildType = "Simple";
      };
      components = {
        llsd = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.dataenc
            hsPkgs.ghc-prim
            hsPkgs.hexpat
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.random
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.utf8-string
            hsPkgs.uuid
          ];
        };
        exes = {
          llsdutil = {};
          testllsd = {
            depends  = optionals _flags.test [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }