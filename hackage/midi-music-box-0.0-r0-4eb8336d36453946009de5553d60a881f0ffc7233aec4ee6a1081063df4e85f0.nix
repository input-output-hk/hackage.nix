{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "midi-music-box"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/midi-music-box";
      url = "";
      synopsis = "Convert MIDI file to music box punch tape";
      description = "Convert MIDI file to music box punch tape for this kind of music box:\n<http://www.amazon.de/Spieluhr-Lochstreifen/dp/B001WNZOVO/>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "midi-music-box" = {
          depends = [
            (hsPkgs."diagrams-postscript" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-postscript"))
            (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
            (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
            (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }