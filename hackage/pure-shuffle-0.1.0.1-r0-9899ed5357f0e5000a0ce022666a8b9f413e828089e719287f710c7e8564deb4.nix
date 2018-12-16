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
      specVersion = "1.12";
      identifier = {
        name = "pure-shuffle";
        version = "0.1.0.1";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "yuji-yamamoto@iij.ad.jp";
      author = "Yuji Yamamoto";
      homepage = "https://gitlab.com/igrep/pure-shuffle#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitLab at <https://gitlab.com/igrep/pure-shuffle#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mono-traversable)
          (hsPkgs.random-shuffle)
        ];
      };
      tests = {
        "pure-shuffle-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.mono-traversable)
            (hsPkgs.pure-shuffle)
            (hsPkgs.random-shuffle)
          ];
        };
      };
    };
  }