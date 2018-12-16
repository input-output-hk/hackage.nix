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
        name = "asciichart";
        version = "1.0.1";
      };
      license = "MIT";
      copyright = "(c) 2018-Present Fabian Beuke";
      maintainer = "mail@beuke.org";
      author = "Fabian Beuke";
      homepage = "https://github.com/madnight/asciichart";
      url = "";
      synopsis = "Line charts in terminal";
      description = "Line charts in terminal ╭┈╯. Haskell port of kroitor/asciichart.\n\n@\nimport Data.Text.Chart (plot)\n\nmain :: IO ()\nmain = plot [1..20]\n@\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.asciichart)
            (hsPkgs.random)
            (hsPkgs.silently)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }