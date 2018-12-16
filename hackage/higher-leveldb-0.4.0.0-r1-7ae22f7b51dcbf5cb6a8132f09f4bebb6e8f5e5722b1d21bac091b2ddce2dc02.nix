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
      specVersion = "1.8";
      identifier = {
        name = "higher-leveldb";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@jeremyhuffman.com";
      author = "Jeremy Huffman";
      homepage = "https://github.com/jeremyjh/higher-leveldb";
      url = "";
      synopsis = "A rich monadic API for working with leveldb databases.";
      description = "A rich monadic API for working with leveldb databases.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.leveldb-haskell)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.higher-leveldb)
            (hsPkgs.cereal)
            (hsPkgs.hspec)
            (hsPkgs.resourcet)
            (hsPkgs.leveldb-haskell)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.monad-control)
            (hsPkgs.transformers-base)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.lifted-base)
          ];
        };
      };
    };
  }