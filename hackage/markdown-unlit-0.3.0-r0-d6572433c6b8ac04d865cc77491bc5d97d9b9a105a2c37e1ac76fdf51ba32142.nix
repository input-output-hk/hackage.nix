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
      specVersion = "1.10";
      identifier = {
        name = "markdown-unlit";
        version = "0.3.0";
      };
      license = "MIT";
      copyright = "(c) 2012-2013 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "https://github.com/sol/markdown-unlit#readme";
      url = "";
      synopsis = "Literate Haskell support for Markdown";
      description = "Documentation is here: <https://github.com/sol/markdown-unlit#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
        ];
      };
      exes = {
        "markdown-unlit" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.markdown-unlit)
          ];
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.silently)
            (hsPkgs.stringbuilder)
            (hsPkgs.temporary)
          ];
        };
      };
    };
  }