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
        name = "synt";
        version = "0.1.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Brent Lintner <brent.lintner@gmail.com>";
      author = "Brent Lintner <brent.lintner@gmail.com>";
      homepage = "http://github.com/brentlintner/synt";
      url = "";
      synopsis = "Similar code analysis.";
      description = "Calculate percentage of similarity between two pieces of code.";
      buildType = "Simple";
    };
    components = {
      "synt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.split)
          (hsPkgs.regexpr)
          (hsPkgs.argparser)
        ];
      };
      exes = {
        "synt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.split)
            (hsPkgs.regexpr)
            (hsPkgs.argparser)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.Synt)
            (hsPkgs.base)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.split)
            (hsPkgs.regexpr)
            (hsPkgs.argparser)
            (hsPkgs.hspec)
            (hsPkgs.hpc)
          ];
        };
      };
    };
  }