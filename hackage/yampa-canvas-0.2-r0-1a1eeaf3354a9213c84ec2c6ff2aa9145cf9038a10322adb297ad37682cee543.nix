{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yampa-canvas";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 The University of Kansas";
      maintainer = "andygill@ku.edu";
      author = "Neil Sculthorpe";
      homepage = "";
      url = "";
      synopsis = "blank-canvas frontend for yampa";
      description = "";
      buildType = "Simple";
    };
    components = {
      "yampa-canvas" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.blank-canvas)
          (hsPkgs.Yampa)
          (hsPkgs.stm)
        ];
      };
      exes = {
        "yampa-canvas-bouncing-balls" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.blank-canvas)
            (hsPkgs.Yampa)
            (hsPkgs.stm)
            (hsPkgs.text)
          ];
        };
      };
    };
  }