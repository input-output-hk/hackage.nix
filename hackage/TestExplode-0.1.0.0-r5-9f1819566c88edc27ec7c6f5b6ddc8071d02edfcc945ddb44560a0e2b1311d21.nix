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
        name = "TestExplode";
        version = "0.1.0.0";
      };
      license = "LGPL-3.0-only";
      copyright = "(c) Hans-Jürgen Guth 2015";
      maintainer = "juergen.software@freea2a.de";
      author = "Hans-Jürgen Guth";
      homepage = "https://github.com/testexplode/testexplode";
      url = "";
      synopsis = "Generates testcases from program-snippets";
      description = "Generates testcases from program-snippets in any language, with varables, that are substituted and a directed graph structure of the snippets and \"test hints\"";
      buildType = "Simple";
    };
    components = {
      "TestExplode" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.interpolatedstring-perl6)
          (hsPkgs.text)
          (hsPkgs.fgl)
          (hsPkgs.graphviz)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
    };
  }