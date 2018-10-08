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
        name = "nowdoc";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Yoshikuni Jujo";
      maintainer = "PAF01143@nifty.ne.jp";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/nowdoc#readme";
      url = "";
      synopsis = "Here document without variable expansion like PHP Nowdoc";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/nowdoc#readme>";
      buildType = "Simple";
    };
    components = {
      "nowdoc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "nowdoc-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.nowdoc)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }