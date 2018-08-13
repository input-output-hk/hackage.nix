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
        name = "oo-prototypes";
        version = "0.1.0.0";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "yi-devel@googlegroups.com";
      author = "Mateusz Kowalczyk";
      homepage = "https://github.com/yi-editor/oo-prototypes";
      url = "";
      synopsis = "Support for OO-like prototypes";
      description = "Support for OO-like prototypes";
      buildType = "Simple";
    };
    components = {
      "oo-prototypes" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }