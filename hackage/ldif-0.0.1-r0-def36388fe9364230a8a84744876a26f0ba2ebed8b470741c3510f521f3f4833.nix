{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ldif";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "radoslav.dorcik@gmail.com";
      author = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "The LDAP Data Interchange Format (LDIF) parser";
      description = "LDIF files parser implementation using Parsec and based\non RFC 2849 - The LDAP Data Interchange Format (LDIF).";
      buildType = "Simple";
    };
    components = {
      "ldif" = {
        depends  = [
          (hsPkgs.ghc)
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.haskell98)
          (hsPkgs.parsec)
          (hsPkgs.Cabal)
        ];
      };
      exes = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }