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
        name = "xhb-atom-cache";
        version = "0.1.0.1";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "Jochen Keil <jochen.keil+xhb-atom-cache@gmail.com>";
      author = "Jochen Keil";
      homepage = "http://github.com/jotrk/xhb-atom-cache/";
      url = "";
      synopsis = "Atom cache for XHB";
      description = "Atom cache for XHB";
      buildType = "Simple";
    };
    components = {
      "xhb-atom-cache" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.xhb)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }