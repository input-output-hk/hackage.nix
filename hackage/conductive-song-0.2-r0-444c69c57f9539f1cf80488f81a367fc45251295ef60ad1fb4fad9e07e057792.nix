{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "conductive-song";
        version = "0.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "renick@gmail.com";
      author = "Renick Bell";
      homepage = "http://www.renickbell.net/doku.php?id=conductive-song";
      url = "";
      synopsis = "a library of functions which are useful for composing music";
      description = "This library contains functions which are useful for composing music, including scales and pitch.";
      buildType = "Simple";
    };
    components = {
      "conductive-song" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conductive-base)
          (hsPkgs.random)
        ];
      };
    };
  }