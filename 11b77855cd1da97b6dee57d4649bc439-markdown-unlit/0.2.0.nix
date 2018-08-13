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
        name = "markdown-unlit";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "(c) 2012 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "Literate Haskell support for GitHub's Markdown flavor";
      description = "Documentation is here: <https://github.com/sol/markdown-unlit#readme>";
      buildType = "Simple";
    };
    components = {
      "markdown-unlit" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "markdown-unlit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.markdown-unlit)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stringbuilder)
            (hsPkgs.directory)
            (hsPkgs.silently)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }