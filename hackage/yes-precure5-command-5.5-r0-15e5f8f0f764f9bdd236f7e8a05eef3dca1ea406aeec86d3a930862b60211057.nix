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
      specVersion = "1.8";
      identifier = {
        name = "yes-precure5-command";
        version = "5.5";
      };
      license = "MIT";
      copyright = "";
      maintainer = "YAMAMOTO Yuji <whosekiteneverfly@gmail.com>";
      author = "YAMAMOTO Yuji";
      homepage = "https://github.com/igrep/yes-precure5-command/";
      url = "";
      synopsis = "Extended yes command to reproduce phrases in Yes! Precure 5.";
      description = "Provides extended yes command to reproduce phrases in Yes! Precure 5 or Yes! PreCure5 GoGo!\n\nSee <https://github.com/igrep/yes-precure5-command/blob/master/README.mkd> for details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.random)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "yes" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.yes-precure5-command)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.random)
            (hsPkgs.containers)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.yes-precure5-command)
          ];
        };
      };
    };
  }