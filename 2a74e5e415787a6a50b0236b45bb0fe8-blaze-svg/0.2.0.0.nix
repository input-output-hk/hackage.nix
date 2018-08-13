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
        name = "blaze-svg";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "deepak.jois@gmail.com";
      author = "Deepak Jois";
      homepage = "https://github.com/deepakjois/blaze-svg";
      url = "";
      synopsis = "SVG combinator library";
      description = "SVG combinator library";
      buildType = "Simple";
    };
    components = {
      "blaze-svg" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.blaze-markup)
        ];
      };
    };
  }