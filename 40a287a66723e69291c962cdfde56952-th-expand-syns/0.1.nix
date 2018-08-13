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
        name = "th-expand-syns";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniels@community.haskell.org";
      author = "Daniel SchÃ¼ssler";
      homepage = "";
      url = "";
      synopsis = "Expands type synonyms in Template Haskell ASTs";
      description = "Expands type synonyms in Template Haskell ASTs";
      buildType = "Simple";
    };
    components = {
      "th-expand-syns" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.syb)
          (hsPkgs.containers)
        ];
      };
    };
  }