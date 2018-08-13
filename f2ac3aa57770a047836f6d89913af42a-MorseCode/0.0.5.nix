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
      specVersion = "1.6";
      identifier = {
        name = "MorseCode";
        version = "0.0.5";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2009 Andy Stewart";
      maintainer = "lazycat.manatee@gmail.com";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Morse code";
      description = "Morse code";
      buildType = "Simple";
    };
    components = {
      "MorseCode" = {
        depends  = [
          (hsPkgs.containers)
          (hsPkgs.base)
          (hsPkgs.split)
        ];
      };
    };
  }