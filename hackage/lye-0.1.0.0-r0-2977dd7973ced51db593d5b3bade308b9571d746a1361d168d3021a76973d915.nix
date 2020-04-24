{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "lye"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "MostAwesomeDude@gmail.com";
      author = "Corbin Simpson";
      homepage = "";
      url = "";
      synopsis = "A Lilypond-compiling music box";
      description = "Lye is a simple package for turning Lilypond snippets\ninto music.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lye" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HCodecs" or ((hsPkgs.pkgs-errors).buildDepError "HCodecs"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."parsers" or ((hsPkgs.pkgs-errors).buildDepError "parsers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."trifecta" or ((hsPkgs.pkgs-errors).buildDepError "trifecta"))
            ];
          buildable = true;
          };
        };
      };
    }