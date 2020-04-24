{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "spacecookie"; version = "0.2.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "git@lukasepple.de";
      author = "Lukas Epple";
      homepage = "https://github.com/sternenseemann/spacecookie";
      url = "";
      synopsis = "gopher server daemon";
      description = "simple gopher server daemon";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."socket" or ((hsPkgs.pkgs-errors).buildDepError "socket"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."hxt-unicode" or ((hsPkgs.pkgs-errors).buildDepError "hxt-unicode"))
          (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
          ];
        buildable = true;
        };
      exes = {
        "spacecookie" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."socket" or ((hsPkgs.pkgs-errors).buildDepError "socket"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."spacecookie" or ((hsPkgs.pkgs-errors).buildDepError "spacecookie"))
            ];
          buildable = true;
          };
        };
      };
    }