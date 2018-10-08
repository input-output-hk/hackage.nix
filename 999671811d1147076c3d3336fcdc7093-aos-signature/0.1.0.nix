{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      optimized = false;
      static = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "aos-signature";
        version = "0.1.0";
      };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "Adjoint Inc (info@adjoint.io)";
      author = "";
      homepage = "https://github.com/adjoint-io/aos-signature#readme";
      url = "";
      synopsis = "An implementation of the AOS signatures";
      description = "An implementation of 1-out-of-n signatures from a variety of keys";
      buildType = "Simple";
    };
    components = {
      "aos-signature" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.protolude)
          (hsPkgs.random)
        ];
      };
      tests = {
        "aos-signature-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aos-signature)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.memory)
            (hsPkgs.mtl)
            (hsPkgs.protolude)
            (hsPkgs.random)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }