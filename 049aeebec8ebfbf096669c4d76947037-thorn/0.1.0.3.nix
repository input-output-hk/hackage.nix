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
      specVersion = "1.16";
      identifier = {
        name = "thorn";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Yusuke Matsushita";
      maintainer = "Yusuke Matsushita <y.skm24t@gmail.com>";
      author = "Yusuke Matsushita";
      homepage = "https://github.com/Kinokkory/Thorn";
      url = "";
      synopsis = "Datatype Manipulation with Template Haskell";
      description = "Datatype Manipulation with Template Haskell";
      buildType = "Simple";
    };
    components = {
      "thorn" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.bifunctors)
          (hsPkgs.profunctors)
        ];
      };
    };
  }