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
        name = "bulletproofs";
        version = "0.2.0";
      };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "Adjoint Inc (info@adjoint.io)";
      author = "";
      homepage = "https://github.com/adjoint-io/bulletproofs#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/adjoint-io/bulletproofs#readme>";
      buildType = "Simple";
    };
    components = {
      "bulletproofs" = {
        depends  = [
          (hsPkgs.arithmoi)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          (hsPkgs.protolude)
          (hsPkgs.text)
        ];
      };
      tests = {
        "bulletproofs-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.arithmoi)
            (hsPkgs.base)
            (hsPkgs.bulletproofs)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.memory)
            (hsPkgs.protolude)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
          ];
        };
      };
    };
  }