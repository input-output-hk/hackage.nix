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
      specVersion = "1.10";
      identifier = {
        name = "weak-bag";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 (c) Ryan Trinkle";
      maintainer = "chessai1996@gmail.com";
      author = "Ryan Trinkle";
      homepage = "https://github.com/chessai/weak-bag";
      url = "";
      synopsis = "Mutable bag backed by weak pointers to each item";
      description = "This module defines the 'WeakBag' type, which represents a mutable\ncollection of items that does not cause the items to be retained in memory.\nIt is useful for situations where a value needs to be inspected or modified\nif it is still alive, but can be ignored if it is dead.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }