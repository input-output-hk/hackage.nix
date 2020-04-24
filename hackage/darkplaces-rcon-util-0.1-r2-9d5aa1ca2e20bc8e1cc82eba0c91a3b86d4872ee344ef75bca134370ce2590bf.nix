{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { linuxstatic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "darkplaces-rcon-util"; version = "0.1"; };
      license = "GPL-2.0-only";
      copyright = "(c) Slava Bacherikov 2015";
      maintainer = "slava@bacher09.org";
      author = "Slava Bacherikov";
      homepage = "https://github.com/bacher09/darkplaces-rcon";
      url = "";
      synopsis = "Darplaces rcon utility";
      description = "This is implementation of rcon shell for darkplaces engine.\n\nFeatures :\n\n* Simple and easy CLI interface\n* Supports both ipv4 and ipv6 protocols\n* Bookmarks and default options\n* Saves command history to file\n* Internal commands and smart autocomplete for them\n* Suspend support with <kbd>Ctrl</kbd>+<kbd>z</kdb>\n\nFor more info visit <https://github.com/bacher09/darkplaces-rcon/blob/master/darkplaces-rcon-util/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."ConfigFile" or ((hsPkgs.pkgs-errors).buildDepError "ConfigFile"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."HostAndPort" or ((hsPkgs.pkgs-errors).buildDepError "HostAndPort"))
          (hsPkgs."darkplaces-text" or ((hsPkgs.pkgs-errors).buildDepError "darkplaces-text"))
          (hsPkgs."darkplaces-rcon" or ((hsPkgs.pkgs-errors).buildDepError "darkplaces-rcon"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
          ];
        buildable = true;
        };
      exes = {
        "drcon" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."darkplaces-text" or ((hsPkgs.pkgs-errors).buildDepError "darkplaces-text"))
            (hsPkgs."darkplaces-rcon" or ((hsPkgs.pkgs-errors).buildDepError "darkplaces-rcon"))
            (hsPkgs."darkplaces-rcon-util" or ((hsPkgs.pkgs-errors).buildDepError "darkplaces-rcon-util"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            ];
          buildable = true;
          };
        };
      tests = {
        "rcon-util-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."darkplaces-rcon-util" or ((hsPkgs.pkgs-errors).buildDepError "darkplaces-rcon-util"))
            (hsPkgs."darkplaces-rcon" or ((hsPkgs.pkgs-errors).buildDepError "darkplaces-rcon"))
            (hsPkgs."darkplaces-text" or ((hsPkgs.pkgs-errors).buildDepError "darkplaces-text"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }