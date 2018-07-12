{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.12";
        identifier = {
          name = "base64-bytestring-type";
          version = "1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/futurice/haskell-base64-bytestring-type#readme";
        url = "";
        synopsis = "A newtype around ByteString, for base64 encoding";
        description = "A newtype around ByteString, for base64 encoding.\nStrict and lazy, normal and url alphabet variants.";
        buildType = "Simple";
      };
      components = {
        "base64-bytestring-type" = {
          depends  = ([
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.base-compat
            hsPkgs.base64-bytestring
            hsPkgs.cereal
            hsPkgs.hashable
            hsPkgs.QuickCheck
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.5") hsPkgs.ghc-prim;
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.base64-bytestring-type
              hsPkgs.cereal
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }