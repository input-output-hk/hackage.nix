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
        name = "funcons-values";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>";
      author = "L. Thomas van Binsbergen and Neil Sculthorpe";
      homepage = "http://plancomps.org";
      url = "";
      synopsis = "Library providing values and operations on values.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "funcons-values" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.bv)
          (hsPkgs.multiset)
          (hsPkgs.text)
          (hsPkgs.random-strings)
        ];
      };
    };
  }