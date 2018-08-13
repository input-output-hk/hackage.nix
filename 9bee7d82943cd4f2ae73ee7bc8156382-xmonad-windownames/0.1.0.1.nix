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
        name = "xmonad-windownames";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "plindbe2@gmail.com";
      author = "Phil Lindberg";
      homepage = "https://github.com/plindbe2/xmonad-windownames";
      url = "";
      synopsis = "A library to automatically put named windows into the DynamicLog.";
      description = "Fetch the window names using the xmonad-contrib NamedWindows\nextension and place them next to the numbers in comma separated form\nnext to the WindowNames in the DynamicLog.";
      buildType = "Simple";
    };
    components = {
      "xmonad-windownames" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.utf8-string)
          (hsPkgs.xmonad)
          (hsPkgs.xmonad-contrib)
          (hsPkgs.containers)
        ];
      };
    };
  }