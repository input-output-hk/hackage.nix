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
      specVersion = "0";
      identifier = {
        name = "hback";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Norbert Wojtowicz <wojtowicz.norbert@gmail.com>";
      author = "Norbert Wojtowicz <wojtowicz.norbert@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "N-back memory game";
      description = "N-back memory game using gtk2hs";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hback" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.process)
            (hsPkgs.glade)
            (hsPkgs.gtk)
            (hsPkgs.cairo)
          ];
        };
      };
    };
  }