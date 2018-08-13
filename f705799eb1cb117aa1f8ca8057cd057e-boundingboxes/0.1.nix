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
      specVersion = "1.10";
      identifier = {
        name = "boundingboxes";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/boundingboxes";
      url = "";
      synopsis = "The type for 2D bounding box";
      description = "";
      buildType = "Simple";
    };
    components = {
      "boundingboxes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.linear)
          (hsPkgs.lens)
        ];
      };
    };
  }