{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { relativepath = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "apelsin"; version = "1.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "christoffer@ojeling.net";
      author = "Christoffer Öjeling";
      homepage = "";
      url = "";
      synopsis = "Server and community browser for the game Tremulous";
      description = "A gtk2hs server and clan browser for the open source game Tremulous <http://tremulous.net>.\nBoth Tremulous 1.1 and GPP are supported.\n\nFeatures filtering, player search, a list of online clan members, a clan list and basic perferences.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "apelsin" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."tremulous-query" or ((hsPkgs.pkgs-errors).buildDepError "tremulous-query"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }