{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "asciichart"; version = "1.0.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."asciichart" or ((hsPkgs.pkgs-errors).buildDepError "asciichart"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."silently" or ((hsPkgs.pkgs-errors).buildDepError "silently"))
            (hsPkgs."raw-strings-qq" or ((hsPkgs.pkgs-errors).buildDepError "raw-strings-qq"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }