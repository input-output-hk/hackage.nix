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
        name = "carettah";
        version = "0.1.2";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Kiwamu Okabe <kiwamu@debian.or.jp>";
      author = "Kiwamu Okabe <kiwamu@debian.or.jp>";
      homepage = "http://carettah.masterq.net/";
      url = "";
      synopsis = "A presentation tool writtten with Haskell.";
      description = "A presentation tool writtten with Haskell.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "carettah" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.time)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.pandoc)
            (hsPkgs.gtk)
            (hsPkgs.cairo)
            (hsPkgs.pango)
            (hsPkgs.hcwiid)
            (hsPkgs.highlighting-kate)
          ];
        };
      };
    };
  }