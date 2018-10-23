{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "IPv6Addr";
        version = "0.6.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2015 - Michel Boucey";
      maintainer = "michel.boucey@gmail.com";
      author = "Michel Boucey";
      homepage = "https://github.com/MichelBoucey/IPv6Addr";
      url = "";
      synopsis = "Library to deal with IPv6 address text representations.";
      description = "Library to deal with IPv6 address text representations, canonization and manipulations.";
      buildType = "Simple";
    };
    components = {
      "IPv6Addr" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.iproute)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.attoparsec)
          (hsPkgs.network-info)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.IPv6Addr)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
          ];
        };
      };
    };
  }