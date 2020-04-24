{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pgdl"; version = "7.77"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "sifmelcara";
      author = "sifmelcara";
      homepage = "";
      url = "";
      synopsis = "pgdownloader";
      description = "a terminal user interface program that downloads a video from html and call vlc to play it immediately.\n(Linux: vlc -f \"video.mp4\", MACOSX: open \"video.mp4\" -a vlc)\n\nClient: Only for Linux and MACOSX.\nServer: Only for nginx's file download page.\n\nThe program will sort the video files and folders by date while files in nginx's download page just sort by name.\n\nFor shortcut keys, please visit https://github.com/sifmelcara/pgdl";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pgdl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vty-ui" or ((hsPkgs.pkgs-errors).buildDepError "vty-ui"))
            (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }