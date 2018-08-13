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
      specVersion = "1.8";
      identifier = {
        name = "higher-leveldb";
        version = "0.5.0.0";
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
      "higher-leveldb" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.leveldb-haskell)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unliftio-core)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.higher-leveldb)
            (hsPkgs.cereal)
            (hsPkgs.hspec)
            (hsPkgs.resourcet)
            (hsPkgs.leveldb-haskell)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.transformers-base)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }