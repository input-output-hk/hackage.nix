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
      specVersion = "1.2";
      identifier = {
        name = "hieraclus";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Philipp Pribbernow";
      maintainer = "philipp...pribbernow@<nospam>t-online.org";
      author = "Philipp Pribbernow";
      homepage = "";
      url = "";
      synopsis = "Automated clustering of arbitrary elements in Haskell.";
      description = "Hieraclus is a library that supports clustering of arbitrary elements in haskell. The\ndifference to the already existing cluster library \"hierarchical-clustering\" is the ability\nto work with abort criterias which allow an \"intelligent\" clustering. With the help of\nabort criterias the user can specify conditions that must be fulfilled in order to stop\nthe clustering process.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.multiset)
          (hsPkgs.HUnit)
        ];
      };
    };
  }