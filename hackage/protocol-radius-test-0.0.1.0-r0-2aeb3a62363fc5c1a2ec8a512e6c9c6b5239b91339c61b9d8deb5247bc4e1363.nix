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
        name = "protocol-radius-test";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "";
      url = "";
      synopsis = "testsuit of protocol-radius haskell package";
      description = "This package provides\ntestsuit of protocol-radius haskell package.";
      buildType = "Simple";
    };
    components = {
      "protocol-radius-test" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.quickcheck-simple)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.protocol-radius)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "isomorphism" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.protocol-radius-test)
            (hsPkgs.quickcheck-simple)
          ];
        };
      };
    };
  }