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
        name = "flow2dot";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dmitry Astapov <dastapov@gmail.com>";
      author = "Dmitry Astapov <dastapov@gmail.com>";
      homepage = "http://adept.linux.kiev.ua:8080/repos/flow2dot";
      url = "";
      synopsis = "Library and binary to generate sequence/flow diagrams from plain text source";
      description = "Generates sequence diagrams from textual descriptions with help of Graphviz graph drawing tool.\nCheck out <http://adept.linux.kiev.ua:8080/repos/flow2dot/sample.flow> (source)\nand <http://adept.linux.kiev.ua:8080/repos/flow2dot/sample.png> (output).";
      buildType = "Simple";
    };
    components = {
      "flow2dot" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.haskell98)
          (hsPkgs.QuickCheck)
          (hsPkgs.parsec)
          (hsPkgs.utf8-string)
          (hsPkgs.dotgen)
        ];
      };
    };
  }