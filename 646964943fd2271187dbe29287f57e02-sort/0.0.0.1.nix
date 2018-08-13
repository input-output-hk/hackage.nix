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
        name = "sort";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Chris Dornan 2017";
      maintainer = "Chris Dornan <chris@chrisdornan.com>";
      author = "Chris Dornan";
      homepage = "https://github.com/cdornan/sort";
      url = "";
      synopsis = "A Haskell sorting toolkit";
      description = "A library of general-purpose sorting utilities.";
      buildType = "Simple";
    };
    components = {
      "sort" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }