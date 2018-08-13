{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "automotive-cse";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "";
      url = "";
      synopsis = "Automotive CSE emulation";
      description = "This package includes Cryptography Security Engine (CSE)\ncodec emulation for automotive things.";
      buildType = "Simple";
    };
    components = {
      "automotive-cse" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.memory)
          (hsPkgs.cryptonite)
        ];
      };
      tests = {
        "exTrue" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.quickcheck-simple)
            (hsPkgs.automotive-cse)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
          ];
        };
      };
    };
  }