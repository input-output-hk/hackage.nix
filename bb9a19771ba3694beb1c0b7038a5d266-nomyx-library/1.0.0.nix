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
      specVersion = "1.8";
      identifier = {
        name = "nomyx-library";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Corentin Dupont";
      maintainer = "Corentin Dupont";
      author = "Corentin Dupont";
      homepage = "http://www.nomyx.net";
      url = "";
      synopsis = "Library of rules for Nomyx";
      description = "Many example of rules ready to be played";
      buildType = "Simple";
    };
    components = {
      "nomyx-library" = {
        depends  = [
          (hsPkgs.nomyx-language)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ghc)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.safe)
          (hsPkgs.shortcut)
          (hsPkgs.time)
          (hsPkgs.time-recurrence)
        ];
      };
    };
  }