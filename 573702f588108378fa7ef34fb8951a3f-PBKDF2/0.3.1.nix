{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "PBKDF2";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2008 Thomas Hartman";
        maintainer = "Thomas Hartman <thomashartman1 at gmail>";
        author = "Thomas Hartman";
        homepage = "";
        url = "";
        synopsis = "Make password-based security schemes more secure.";
        description = "Implementation of Password-Based Key Derivation Function, aka pbkdf2, from RSA labs.\nI'll deprecate this if it gets folded into an already-existing crypto package.";
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