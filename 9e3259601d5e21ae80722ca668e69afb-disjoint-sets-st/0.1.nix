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
        name = "disjoint-sets-st";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Petr Pudlák";
      maintainer = "Petr Pudlák <petr.mvd@gmail.com>";
      author = "Petr Pudlák";
      homepage = "http://github.com/ppetr/disjoint-sets-st/";
      url = "";
      synopsis = "Imperative ST/IO based disjoint set data structure.";
      description = "Imperative ST/IO based disjoint set data structure.";
      buildType = "Simple";
    };
    components = {
      "disjoint-sets-st" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
      };
    };
  }