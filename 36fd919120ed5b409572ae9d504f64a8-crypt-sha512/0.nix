{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "crypt-sha512";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Oleg Grenrus";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/phadej/crypt-sha512";
        url = "";
        synopsis = "Pure Haskell implelementation for GNU SHA512 crypt algorithm";
        description = "crypt() is the password encryption function.  It is based on the Data\nEncryption Standard algorithm with variations intended (among other things) to\ndiscourage use of hardware implementations of a key search.\n\nThis package provides a pure Haskell implementation of SHA512 crypt scheme.";
        buildType = "Simple";
      };
      components = {
        crypt-sha512 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.cryptohash-sha512
          ];
        };
        tests = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.crypt-sha512
              hsPkgs.bytestring
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.quickcheck-instances
            ];
            libs = [ pkgs.crypt ];
          };
        };
      };
    }