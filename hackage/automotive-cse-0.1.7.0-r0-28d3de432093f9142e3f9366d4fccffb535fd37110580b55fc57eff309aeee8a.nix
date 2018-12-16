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
        name = "automotive-cse";
        version = "0.1.7.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "";
      url = "";
      synopsis = "Automotive CSE emulation";
      description = "This package includes Cryptography Security Engine (CSE)\ncodec emulation for automotive things.\nPorting logics from <https://github.com/naohaq/CSE_KeyGen/tree/master/Erlang>.\nReference documents:\n<http://cache.freescale.com/files/32bit/doc/app_note/AN4234.pdf>\n<http://cache.freescale.com/files/microcontrollers/doc/app_note/AN5178.pdf>\n<http://www.st.com/web/en/resource/technical/document/application_note/DM00075575.pdf>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-short)
          (hsPkgs.cereal)
          (hsPkgs.memory)
          (hsPkgs.cryptonite)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-simple)
            (hsPkgs.automotive-cse)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-short)
            (hsPkgs.cryptonite)
          ];
        };
      };
    };
  }