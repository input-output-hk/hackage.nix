{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "mpppc";
        version = "0.1.3";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "darinmorrison@gmail.com";
      author = "Max Bolingbroke,\nBrent Yorgey,\nDarin Morrison";
      homepage = "";
      url = "";
      synopsis = "Multi-dimensional parametric pretty-printer with color";
      description = "Multi-dimensional parametric pretty-printer with color";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.split)
          (hsPkgs.text)
        ];
      };
    };
  }