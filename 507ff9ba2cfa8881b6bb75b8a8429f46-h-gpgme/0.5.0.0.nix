{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "h-gpgme";
          version = "0.5.0.0";
        };
        license = "MIT";
        copyright = "(c) Reto Habluetzel 2018";
        maintainer = "rethab@protonmail.ch";
        author = "Reto Habluetzel";
        homepage = "https://github.com/rethab/h-gpgme";
        url = "";
        synopsis = "High Level Binding for GnuPG Made Easy (gpgme)";
        description = "High Level Binding for GnuPG Made Easy (gpgme): A Haskell API for the gpgme C library.";
        buildType = "Simple";
      };
      components = {
        "h-gpgme" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-gpgme
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.unix
            hsPkgs.email-validate
            hsPkgs.time
            hsPkgs.data-default
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bindings-gpgme
              hsPkgs.bytestring
              hsPkgs.transformers
              hsPkgs.time
              hsPkgs.unix
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.email-validate
              hsPkgs.data-default
              hsPkgs.temporary
              hsPkgs.exceptions
              hsPkgs.HUnit
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }