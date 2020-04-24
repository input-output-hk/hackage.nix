{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "snowtify"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "aiya000";
      maintainer = "aiya000.develop@gmail.com";
      author = "aiya000";
      homepage = "https://github.com/aiya000/hs-snowtify#README.md";
      url = "";
      synopsis = "snowtify send your result of `stack build` (`stack test`) to notify-daemon :dog2:";
      description = "snowtify send your result of `stack build` (`stack test`) to notify-daemon :dog2:";
      buildType = "Simple";
      };
    components = {
      exes = {
        "snowtify" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."turtle" or ((hsPkgs.pkgs-errors).buildDepError "turtle"))
            ];
          buildable = true;
          };
        };
      };
    }