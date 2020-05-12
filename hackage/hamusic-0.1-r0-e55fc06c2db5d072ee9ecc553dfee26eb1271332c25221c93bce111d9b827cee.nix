{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hamusic"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008 Samuel Silva";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."musicxml" or (errorHandler.buildDepError "musicxml"))
          (hsPkgs."haskore" or (errorHandler.buildDepError "haskore"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          ];
        buildable = true;
        };
      exes = {
        "HaMusic" = {
          depends = [
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        "MusicTranslate" = { buildable = true; };
        "MusicCount" = { buildable = true; };
        };
      };
    }