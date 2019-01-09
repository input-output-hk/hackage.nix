{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "PBKDF2"; version = "0.3.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008 Thomas Hartman";
      maintainer = "Silk <code@silkapp.com>";
      author = "Thomas Hartman";
      homepage = "";
      url = "";
      synopsis = "Make password-based security schemes more secure.";
      description = "Implementation of Password-Based Key Derivation\nFunction, aka pbkdf2, from RSA labs.  I'll deprecate\nthis if it gets folded into an already-existing\ncrypto package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.Crypto)
          (hsPkgs.binary)
          (hsPkgs.random)
          ];
        };
      };
    }