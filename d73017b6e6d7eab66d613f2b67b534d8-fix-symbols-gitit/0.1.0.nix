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
        name = "fix-symbols-gitit";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "";
      url = "http://github.com/conal/fix-symbols-gitit";
      synopsis = "Gitit plugin: Turn some Haskell symbols into pretty math symbols.";
      description = "Gitit plugin: Turn some Haskell symbols into pretty math symbols.";
      buildType = "Simple";
    };
    components = {
      "fix-symbols-gitit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.gitit)
        ];
      };
    };
  }