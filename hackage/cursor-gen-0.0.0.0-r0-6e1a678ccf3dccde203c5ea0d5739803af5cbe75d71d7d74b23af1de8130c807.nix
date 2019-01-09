{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cursor-gen"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2018 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/cursor";
      url = "";
      synopsis = "Generators for Purely Functional Cursors";
      description = "Generators for Purely Functional Cursors for common data structures";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.cursor)
          (hsPkgs.genvalidity)
          (hsPkgs.genvalidity-containers)
          (hsPkgs.genvalidity-text)
          (hsPkgs.text)
          ];
        };
      tests = {
        "cursor-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.cursor)
            (hsPkgs.cursor-gen)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.genvalidity-hspec-optics)
            (hsPkgs.hspec)
            (hsPkgs.microlens)
            (hsPkgs.pretty-show)
            (hsPkgs.text)
            ];
          };
        };
      };
    }