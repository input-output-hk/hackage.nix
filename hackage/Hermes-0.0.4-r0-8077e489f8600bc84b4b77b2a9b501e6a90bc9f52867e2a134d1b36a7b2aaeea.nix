{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Hermes"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010, University of Tromsø";
      maintainer = "Svein Ove Aas <svein.ove@aas.no>";
      author = "Svein Ove Aas <svein.ove@aas.no>";
      homepage = "";
      url = "";
      synopsis = "Message-based middleware layer";
      description = "A middleware providing best-effort unicast, remote procedure calls,\nprobabilistic (and slow!) broadcast and automatic membership\nmanagement, meant for small to medium networks";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."AES" or ((hsPkgs.pkgs-errors).buildDepError "AES"))
          (hsPkgs."SHA2" or ((hsPkgs.pkgs-errors).buildDepError "SHA2"))
          (hsPkgs."RSA" or ((hsPkgs.pkgs-errors).buildDepError "RSA"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."yjtools" or ((hsPkgs.pkgs-errors).buildDepError "yjtools"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."monads-tf" or ((hsPkgs.pkgs-errors).buildDepError "monads-tf"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."unamb" or ((hsPkgs.pkgs-errors).buildDepError "unamb"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
          ];
        buildable = true;
        };
      };
    }