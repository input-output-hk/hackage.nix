{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "hakyll-shortcut-links"; version = "0.0.0.0"; };
      license = "MPL-2.0";
      copyright = "2019 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik";
      homepage = "https://github.com/kowainik/hakyll-shortcut-links";
      url = "";
      synopsis = "Use shortcut-links in markdown file for Hakyll";
      description = "Use shortcut-links in markdown file for Hakyll. See README for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hakyll)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.pandoc-types)
          (hsPkgs.shortcut-links)
          (hsPkgs.text)
          ];
        };
      tests = {
        "hakyll-shortcut-links-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hakyll-shortcut-links)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.pandoc)
            (hsPkgs.text)
            ];
          };
        };
      };
    }