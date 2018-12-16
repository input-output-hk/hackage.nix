{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "scat";
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "romain.edelmann@gmail.com";
      author = "Romain Edelmann";
      homepage = "https://github.com/redelmann/scat";
      url = "";
      synopsis = "Generates unique passwords for various websites from a single password.";
      description = "Flexible password generator. For each service, passwords are generated deterministically from a main password and a code. Internally, Scrypt is used to obtain the hash generating the passwords.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "scat" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.scrypt)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.mtl)
            (hsPkgs.vector)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
      tests = {
        "scat-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.scrypt)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.mtl)
            (hsPkgs.vector)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
    };
  }