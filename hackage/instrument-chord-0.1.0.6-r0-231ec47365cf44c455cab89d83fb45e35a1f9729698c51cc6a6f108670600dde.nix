{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "instrument-chord"; version = "0.1.0.6"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "w@xy30.com";
      author = "Alan Hawkins";
      homepage = "https://github.com/xpika/chord";
      url = "";
      synopsis = "Render Instrument Chords";
      description = "Library to generate descriptions of musical instrument manipluations";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."music-diatonic" or ((hsPkgs.pkgs-errors).buildDepError "music-diatonic"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }