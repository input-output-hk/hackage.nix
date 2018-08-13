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
        name = "bspack";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nicolas@di-prima.fr";
      author = "Nicolas DI PRIMA";
      homepage = "https://github.com/NicolasDP/hs-bspack";
      url = "";
      synopsis = "A simple and fast bytestring packer";
      description = "A simple and fast bytestring packer";
      buildType = "Simple";
    };
    components = {
      "bspack" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.bspack)
          ];
        };
      };
    };
  }