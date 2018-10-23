{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "chatty-utils";
        version = "0.7.3.1";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "m@doomanddarkness.eu";
      author = "Marvin Cohrs";
      homepage = "http://doomanddarkness.eu/pub/chatty";
      url = "";
      synopsis = "Some utilities every serious chatty-based application may need.";
      description = "Some utilities every serious chatty-based application may need. Includes a graph type, search trees, a None class, a counter and an atom store.";
      buildType = "Simple";
    };
    components = {
      "chatty-utils" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.mtl)
        ];
      };
    };
  }