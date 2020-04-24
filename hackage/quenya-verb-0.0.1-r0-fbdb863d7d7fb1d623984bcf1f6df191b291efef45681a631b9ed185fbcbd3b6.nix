{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "quenya-verb"; version = "0.0.1"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (c) 2015 Kaashif Hymabaccus";
      maintainer = "kaashif@kaashif.co.uk";
      author = "Kaashif Hymabaccus";
      homepage = "";
      url = "";
      synopsis = "Quenya verb conjugator";
      description = "Web app that conjugates Quenya verbs. Uses Scotty to provide a\nRESTful API (but really it's just a single URL you POST to),\nand React.js for a sleek, web scale, flat, synergistic front end.\n\nInstall and run `quenya-verb-server --help` for some more\ninformation on running the program.\n\nSee <http://github.com/kaashif/quenya-verb> for more\ninformation on building the latest version from source, using\nthe API and so on.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."cond" or ((hsPkgs.pkgs-errors).buildDepError "cond"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."iproute" or ((hsPkgs.pkgs-errors).buildDepError "iproute"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
          (hsPkgs."wai-middleware-static" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-static"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          ];
        buildable = true;
        };
      exes = {
        "quenya-verb-server" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."quenya-verb" or ((hsPkgs.pkgs-errors).buildDepError "quenya-verb"))
            ];
          buildable = true;
          };
        };
      };
    }