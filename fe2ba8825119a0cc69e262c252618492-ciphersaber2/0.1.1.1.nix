{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ciphersaber2";
          version = "0.1.1.1";
        };
        license = "MIT";
        copyright = "Copyright © 2015 Bart Massey";
        maintainer = "bart@cs.pdx.edu";
        author = "Bart Massey";
        homepage = "http://github.com/BartMassey/ciphersaber";
        url = "";
        synopsis = "Implementation of CipherSaber2 RC4 cryptography.";
        description = "This package implements CipherSaber-2, a\nstandard for RC4 encryption. See the\nproject website for details.";
        buildType = "Simple";
      };
      components = {
        "ciphersaber2" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.bytestring
          ];
        };
        exes = {
          "cs2" = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.parseargs
              hsPkgs.bytestring
            ];
          };
        };
      };
    }