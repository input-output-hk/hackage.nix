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
        name = "labeled-graph";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Labeled graph structure";
      description = "Labeled tree structure, on the model of the standard Data.Graph";
      buildType = "Simple";
    };
    components = {
      "labeled-graph" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.labeled-tree)
        ];
      };
    };
  }