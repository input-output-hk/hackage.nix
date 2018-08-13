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
        name = "BitStringRandomMonad";
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marcus@conditionraise.se";
      author = "Marcus Ofenhed";
      homepage = "";
      url = "";
      synopsis = "";
      description = "A library which turns a bytestring into a random monad.\nInput could be any PRNG which can output a lazy\nbytestring.";
      buildType = "Simple";
    };
    components = {
      "BitStringRandomMonad" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.bitstring)
          (hsPkgs.mtl)
          (hsPkgs.primitive)
          (hsPkgs.parallel)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "random-monad-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.bitstring)
            (hsPkgs.mtl)
            (hsPkgs.primitive)
            (hsPkgs.parallel)
            (hsPkgs.vector)
            (hsPkgs.BitStringRandomMonad)
          ];
        };
      };
    };
  }