{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      bytestring-in-base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "gd";
        version = "3000.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert";
      maintainer = "bjorn@bringert.net";
      author = "Bjorn Bringert";
      homepage = "";
      url = "";
      synopsis = "A Haskell binding to a subset of the GD graphics library";
      description = "This is a binding to a (currently very small) subset of\nthe GD graphics library.";
      buildType = "Simple";
    };
    components = {
      "gd" = {
        depends  = if _flags.bytestring-in-base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ];
        libs = [
          (pkgs."gd")
          (pkgs."png")
          (pkgs."z")
          (pkgs."jpeg")
          (pkgs."m")
          (pkgs."fontconfig")
          (pkgs."freetype")
          (pkgs."pthread")
          (pkgs."expat")
        ];
      };
    };
  }