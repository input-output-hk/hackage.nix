{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { production = true; devel = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "tkyprof"; version = "0.0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Mitsutoshi Aoe";
      maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
      author = "Mitsutoshi Aoe";
      homepage = "https://github.com/maoe/tkyprof";
      url = "";
      synopsis = "A web-based visualizer for GHC Profiling Reports";
      description = "A web-based visualizer for GHC Profiling Reports";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = if flags.devel then true else false; };
      exes = {
        "tkyprof" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."attoparsec-enumerator" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-enumerator"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."enumerator" or ((hsPkgs.pkgs-errors).buildDepError "enumerator"))
            (hsPkgs."hamlet" or ((hsPkgs.pkgs-errors).buildDepError "hamlet"))
            (hsPkgs."rosezipper" or ((hsPkgs.pkgs-errors).buildDepError "rosezipper"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."web-routes" or ((hsPkgs.pkgs-errors).buildDepError "web-routes"))
            (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
            (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
            (hsPkgs."yesod-json" or ((hsPkgs.pkgs-errors).buildDepError "yesod-json"))
            (hsPkgs."yesod-static" or ((hsPkgs.pkgs-errors).buildDepError "yesod-static"))
            ];
          buildable = if flags.devel then false else true;
          };
        "prof2json" = {
          depends = [
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = false;
          };
        };
      };
    }