{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "PBKDF2";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2008 Thomas Hartman";
        maintainer = "Thomas Hartman <thomashartman1 at gmail>";
        author = "Thomas Hartman";
        homepage = "";
        url = "";
        synopsis = "Make password-based security schemes more secure.";
        description = "Implementation of Password-Based Key Derivation Function, aka pbkdf2, from RSA labs.\nhttp://tools.ietf.org/html/rfc2898#section-5.2\nI'll deprecate this if it's adopted into the Crypto package.";
        buildType = "Simple";
      };
      components = {
        PBKDF2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.Crypto
            hsPkgs.haskell98
            hsPkgs.binary
          ];
        };
      };
    }