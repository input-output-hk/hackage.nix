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
        name = "fault-tree";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
      author = "Tom Hawkins <tomahawkins@gmail.com>";
      homepage = "http://tomahawkins.org";
      url = "";
      synopsis = "A fault tree analysis library.";
      description = "Fault tree analysis is used to determine probability of failure modes\nin safety critical applications.  Generates fault tree graphs (Graphviz)\nand calculates cutsets.\nYices (required) is the backend SMT solver used for cutset calculation.";
      buildType = "Simple";
    };
    components = {
      "fault-tree" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yices)
        ];
      };
    };
  }