{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hamusic"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008-2009 Samuel Silva";
      maintainer = "Samuel Silva <silva.samuel@alumni.uminho.pt>";
      author = "Samuel Silva <silva.samuel@alumni.uminho.pt>";
      homepage = "https://troglodita.di.uminho.pt/svn/musica/work/HaMusic";
      url = "";
      synopsis = "Library to handle abstract music";
      description = "This library consists on abstract music manipulation. It also\nsupports interfaces with MusicXML.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
          (hsPkgs."musicxml" or ((hsPkgs.pkgs-errors).buildDepError "musicxml"))
          (hsPkgs."haskore" or ((hsPkgs.pkgs-errors).buildDepError "haskore"))
          (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
          ];
        buildable = true;
        };
      exes = {
        "HaMusic" = {
          depends = [
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        "MusicTranslate" = { buildable = true; };
        "MusicCount" = { buildable = true; };
        "MusicAnnotate" = { buildable = true; };
        };
      };
    }