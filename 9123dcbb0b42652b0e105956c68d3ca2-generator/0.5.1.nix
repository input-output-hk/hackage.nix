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
      specVersion = "1.2";
      identifier = {
        name = "generator";
        version = "0.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yairchu@gmail.com";
      author = "Yair Chuchem";
      homepage = "http://github.com/yairchu/generator/tree";
      url = "";
      synopsis = "A list monad transformer and related functions.";
      description = "A list monad transformer and a generic List class.\nConsumer and Generator monad transformers to create\nand iterate 'ListT's in a manner similar to\nPython generators.\nA Tree module for searching and pruning\ntrees expressed as 'List's whose underlying monad\nis also a List.";
      buildType = "Simple";
    };
    components = {
      "generator" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.MaybeT)
        ];
      };
    };
  }