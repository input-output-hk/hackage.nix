{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      enable-hlint-test = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "euler-tour-tree";
        version = "0.1.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "chahine.moreau@gmail.com";
      author = "chahine.moreau@gmail.com";
      homepage = "https://github.com/k0ral/euler-tour-tree";
      url = "";
      synopsis = "Euler tour trees";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.fingertree)
          (hsPkgs.mtl)
          (hsPkgs.parser-combinators)
          (hsPkgs.transformers)
          (hsPkgs.Unique)
        ];
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.euler-tour-tree)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
        "property-tests" = {
          depends  = [
            (hsPkgs.euler-tour-tree)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.keys)
            (hsPkgs.QuickCheck)
            (hsPkgs.sequence)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
        "hlint-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }