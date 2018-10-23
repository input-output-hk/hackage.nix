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
        name = "bitcoin-types";
        version = "0.9.2";
      };
      license = "MIT";
      copyright = "(c) 2015 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://www.leonmergen.com/opensource.html";
      url = "";
      synopsis = "Provides consistent low-level types used commonly among Bitcoin implementations";
      description = "Instead of having each Bitcoin library re-define the low level types it is using,\nthis library provides a ready-to-use collection of low-level types and aliases.";
      buildType = "Simple";
    };
    components = {
      "bitcoin-types" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.binary)
          (hsPkgs.hexstring)
          (hsPkgs.base58string)
        ];
      };
      tests = {
        "test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
            (hsPkgs.base58string)
            (hsPkgs.hexstring)
            (hsPkgs.bitcoin-types)
          ];
        };
      };
    };
  }