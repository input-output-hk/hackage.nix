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
      specVersion = "1.2";
      identifier = {
        name = "yavie";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "yet another visual editor";
      description = "yet another visual editor\n\nCustomizable vi like editor.\nYou can customize by edit ~\\/.yavie\\/vty\\/yavie-vty.hs.\nIt's very buggy now.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.event-driven)
          (hsPkgs.filepath)
          (hsPkgs.monads-tf)
          (hsPkgs.regexpr)
        ];
      };
      exes = {
        "yavie" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.Cabal)
            (hsPkgs.process)
          ];
        };
      };
    };
  }