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
      specVersion = "0";
      identifier = {
        name = "TimePiece";
        version = "0.0.5";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "A simple tile-based digital clock screen saver";
      description = "A simple tile-based digital clock screen saver";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.SDL)
          (hsPkgs.SDL-image)
          (hsPkgs.SDL-ttf)
          (hsPkgs.SDL-gfx)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
        ];
      };
      exes = {
        "TimePiece" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.SDL)
            (hsPkgs.SDL-image)
            (hsPkgs.SDL-ttf)
            (hsPkgs.SDL-gfx)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
          ];
        };
      };
    };
  }