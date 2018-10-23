{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "PBKDF2";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008 Thomas Hartman";
      maintainer = "Thomas Hartman <thomashartman1 at gmail>";
      author = "Thomas Hartman";
      homepage = "";
      url = "";
      synopsis = "Make password-based security schemes more secure.";
      description = "Implementation of Password-Based Key Derivation Function, aka pbkdf2, from RSA labs.\nhttp://tools.ietf.org/html/rfc2898#section-5.2\nI'll deprecate this if it gets folded into an already-existing crypto package.";
      buildType = "Simple";
    };
    components = {
      "PBKDF2" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.Crypto)
          (hsPkgs.haskell98)
          (hsPkgs.binary)
        ];
      };
    };
  }