{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "diagrams-core";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "byorgey@cis.upenn.edu";
      author = "Brent Yorgey";
      homepage = "http://code.google.com/p/diagrams/";
      url = "";
      synopsis = "Core libraries for diagrams EDSL";
      description = "The core modules underlying diagrams,\nan embedded domain-specific language\nfor compositional, declarative drawing.";
      buildType = "Simple";
    };
    components = {
      "diagrams-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.vector-space)
          (hsPkgs.MemoTrie)
        ];
      };
    };
  }