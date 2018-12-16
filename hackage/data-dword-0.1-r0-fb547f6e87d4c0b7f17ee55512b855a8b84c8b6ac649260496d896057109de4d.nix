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
      specVersion = "1.10.0";
      identifier = {
        name = "data-dword";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2011, 2012 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/data-dword";
      url = "";
      synopsis = "Stick two binary words together to get a bigger one";
      description = "This package provides Template Haskell utilities for declaring fixed-length\nbinary word data types. Signed and unsigned 96, 128, 160, 192, 224, and\n256-bit types are predefined.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.template-haskell)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.data-dword)
          ];
        };
      };
    };
  }