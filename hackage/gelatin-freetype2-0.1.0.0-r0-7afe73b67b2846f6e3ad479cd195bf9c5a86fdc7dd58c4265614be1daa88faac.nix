{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gelatin-freetype2"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Schell Scivally";
      maintainer = "schell@zyghost.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/gelatin/gelatin-freetype2#readme";
      url = "";
      synopsis = "FreeType2 based text rendering for the gelatin realtime\nrendering system.";
      description = "FreeType2 based text rendering for the gelatin realtime\nrendering system. Please see README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."gelatin" or ((hsPkgs.pkgs-errors).buildDepError "gelatin"))
          (hsPkgs."gelatin-gl" or ((hsPkgs.pkgs-errors).buildDepError "gelatin-gl"))
          (hsPkgs."freetype2" or ((hsPkgs.pkgs-errors).buildDepError "freetype2"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          ];
        buildable = true;
        };
      tests = {
        "gelatin-freetype2-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gelatin-freetype2" or ((hsPkgs.pkgs-errors).buildDepError "gelatin-freetype2"))
            ];
          buildable = true;
          };
        };
      };
    }