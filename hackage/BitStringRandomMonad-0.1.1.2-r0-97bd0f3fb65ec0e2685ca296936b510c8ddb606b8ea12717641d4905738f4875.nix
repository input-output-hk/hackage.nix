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
        name = "BitStringRandomMonad";
        version = "0.1.1.2";
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
    };
  }