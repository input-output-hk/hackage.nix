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
        name = "msgpack";
        version = "0.7.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009-2011, Hideyuki Tanaka";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "http://msgpack.org/";
      url = "";
      synopsis = "A Haskell implementation of MessagePack";
      description = "A Haskell implementation of MessagePack <http://msgpack.org/>";
      buildType = "Simple";
    };
    components = {
      "msgpack" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.vector)
          (hsPkgs.attoparsec)
          (hsPkgs.blaze-builder)
          (hsPkgs.deepseq)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "msgpack-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.msgpack)
          ];
        };
      };
    };
  }