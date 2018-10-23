{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Zora";
        version = "1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bgwines@cs.stanford.edu";
      author = "Brett Wines";
      homepage = "http://github.com/bgwines/zora";
      url = "";
      synopsis = "Graphing library wrapper + assorted useful functions";
      description = "A library of assorted useful functions for working with lists, doing mathematical operations and graphing custom data types.";
      buildType = "Simple";
    };
    components = {
      "Zora" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.graphviz)
          (hsPkgs.fgl)
          (hsPkgs.shelly)
          (hsPkgs.directory)
          (hsPkgs.random)
        ];
      };
      tests = {
        "test-zora" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Zora)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty)
            (hsPkgs.containers)
            (hsPkgs.random)
          ];
        };
      };
    };
  }