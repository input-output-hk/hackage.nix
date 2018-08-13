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
        name = "unordered-graphs";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Graph library using unordered-containers";
      description = "Simple graph library allowing any Hashable instance\nto be a node type.";
      buildType = "Simple";
    };
    components = {
      "unordered-graphs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.dlist)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }