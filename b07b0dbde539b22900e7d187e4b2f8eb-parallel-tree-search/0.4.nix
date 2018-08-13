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
      specVersion = "1.6";
      identifier = {
        name = "parallel-tree-search";
        version = "0.4";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Sebastian Fischer";
      author = "Fabian Reck, Sebastian Fischer";
      homepage = "http://github.com/sebfisch/parallel-tree-search";
      url = "";
      synopsis = "Parallel Tree Search";
      description = "This Haskell library provides an implementation of parallel search\nbased on the search tree provided by the package tree-monad.";
      buildType = "Simple";
    };
    components = {
      "parallel-tree-search" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tree-monad)
          (hsPkgs.parallel)
        ];
      };
    };
  }