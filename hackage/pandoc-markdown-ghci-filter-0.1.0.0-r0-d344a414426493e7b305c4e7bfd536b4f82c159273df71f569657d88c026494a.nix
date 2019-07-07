{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "pandoc-markdown-ghci-filter";
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "2019 Guru Devanla";
      maintainer = "gdrvnl@gmail.com";
      author = "Guru Devanla";
      homepage = "https://github.com/gdevanla/pandoc-markdown-ghci-filter#readme";
      url = "";
      synopsis = "Pandoc-filter to evaluate `code` section in markdown and auto-embed output.";
      description = "Please see the README on GitHub at <https://github.com/gdevanla/pandoc-markdown-ghci-filter#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ghcid)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-types)
          (hsPkgs.text)
          ];
        };
      exes = {
        "pandoc-markdown-ghci-filter-exe" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.ghcid)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-markdown-ghci-filter)
            (hsPkgs.pandoc-types)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "pandoc-markdown-ghci-filter-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.ghcid)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-markdown-ghci-filter)
            (hsPkgs.pandoc-types)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            ];
          };
        };
      };
    }