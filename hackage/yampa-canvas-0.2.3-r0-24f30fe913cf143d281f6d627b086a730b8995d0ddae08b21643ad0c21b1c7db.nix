{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yampa-canvas";
        version = "0.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 The University of Kansas";
      maintainer = "andygill@ku.edu";
      author = "Neil Sculthorpe";
      homepage = "";
      url = "";
      synopsis = "blank-canvas frontend for Yampa";
      description = "@blank-canvas@ frontend for @Yampa@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blank-canvas)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.Yampa)
        ];
      };
      exes = {
        "yampa-canvas-bouncing-balls" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blank-canvas)
            (hsPkgs.simple-affine-space)
            (hsPkgs.text)
            (hsPkgs.Yampa)
            (hsPkgs.yampa-canvas)
          ];
        };
      };
    };
  }