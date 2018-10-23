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
        name = "xhb-ewmh";
        version = "0.1.0.1";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "Jochen Keil <jochen.keil+xhb-ewmh@gmail.com>";
      author = "Jochen Keil";
      homepage = "http://github.com/jotrk/xhb-ewmh/";
      url = "";
      synopsis = "EWMH utilities for XHB";
      description = "EWMH utilities for XHB";
      buildType = "Simple";
    };
    components = {
      "xhb-ewmh" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.dlist)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.xhb)
          (hsPkgs.xhb-atom-cache)
        ];
      };
    };
  }