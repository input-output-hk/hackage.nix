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
        name = "pedersen-commitment";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Adjoint Inc (info@adjoint.io)";
      author = "";
      homepage = "https://github.com/adjoint-io/pedersen-commitment#readme";
      url = "";
      synopsis = "An implementation of Pedersen commitment schemes";
      description = "An implementation of Pedersen commitment schemes for multiparty protocols.";
      buildType = "Simple";
    };
    components = {
      "pedersen-commitment" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.protolude)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test-suite" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.memory)
            (hsPkgs.mtl)
            (hsPkgs.pedersen-commitment)
            (hsPkgs.protolude)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
          ];
        };
      };
    };
  }