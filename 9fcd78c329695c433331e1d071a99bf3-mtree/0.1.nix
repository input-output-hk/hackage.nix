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
        name = "mtree";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "gopinath@eecs.oregonstate.edu";
      author = "Rahul Gopinath";
      homepage = "";
      url = "";
      synopsis = "Tree with Meta and Content parameters";
      description = "This Haskell library provides an implementation of\na tree data type with meta data in the nodes and\ncontents in the leaves.";
      buildType = "Simple";
    };
    components = {
      "mtree" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
        ];
      };
    };
  }