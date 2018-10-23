{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      test-cabal114 = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "text-ldap";
        version = "0.1.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "";
      url = "";
      synopsis = "Parser and Printer for LDAP text data stream";
      description = "This package contains Parser and Printer for\nLDAP text data stream like OpenLDAP backup LDIF.";
      buildType = "Simple";
    };
    components = {
      "text-ldap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.attoparsec)
          (hsPkgs.dlist)
          (hsPkgs.semigroups)
          (hsPkgs.base64-bytestring)
        ];
      };
      exes = {
        "parseTest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text-ldap)
          ];
        };
        "ppTest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text-ldap)
          ];
        };
      };
      tests = {
        "pp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.random)
            (hsPkgs.semigroups)
            (hsPkgs.text-ldap)
            (hsPkgs.QuickCheck)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }