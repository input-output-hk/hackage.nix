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
      specVersion = "1.10";
      identifier = {
        name = "hexpat-pickle-generic";
        version = "0.1.6";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "";
      url = "";
      synopsis = "Picklers for de/serialising Generic data types to and from XML";
      description = "An IsXML class and GHC.Generics implementation for pickleable data types using hexpat.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hexpat)
          (hsPkgs.text)
        ];
      };
      tests = {
        "hexpat-pickle-generic-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hexpat-pickle-generic)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }