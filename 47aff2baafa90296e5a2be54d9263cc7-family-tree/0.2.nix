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
        name = "family-tree";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Nathan \"Taneb\" van Doorn";
      maintainer = "nvd1234@gmail.com";
      author = "Nathan \"Taneb\" van Doorn";
      homepage = "";
      url = "";
      synopsis = "Family trees with lenses";
      description = "This is a module for the manipulation of family trees.";
      buildType = "Simple";
    };
    components = {
      "family-tree" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.time)
          (hsPkgs.data-lens)
          (hsPkgs.binary)
        ];
      };
    };
  }