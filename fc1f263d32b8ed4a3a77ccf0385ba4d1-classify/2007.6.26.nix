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
      specVersion = "0";
      identifier = {
        name = "classify";
        version = "2007.6.26";
      };
      license = "BSD-3-Clause";
      copyright = "2004-2007, Lemmih";
      maintainer = "Lemmih <lemmih@gmail.com>";
      author = "Lemmih <lemmih@gmail.com>";
      homepage = "http://www.scannedinavian.org/~lemmih/";
      url = "";
      synopsis = "Library for classification of files.";
      description = "";
      buildType = "Custom";
    };
    components = {
      "classify" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }