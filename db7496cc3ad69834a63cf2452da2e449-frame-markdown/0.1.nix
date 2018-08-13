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
        name = "frame-markdown";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Adam Dunkley";
      maintainer = "\"Adam Dunkley\" <acd07u@cs.nott.ac.uk>";
      author = "Adam Dunkley";
      homepage = "";
      url = "";
      synopsis = "A markdown to Frame GUI writer for Pandoc";
      description = "A markdown to Frame GUI writer for Pandoc";
      buildType = "Simple";
    };
    components = {
      "frame-markdown" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.frame)
          (hsPkgs.pandoc)
        ];
      };
    };
  }