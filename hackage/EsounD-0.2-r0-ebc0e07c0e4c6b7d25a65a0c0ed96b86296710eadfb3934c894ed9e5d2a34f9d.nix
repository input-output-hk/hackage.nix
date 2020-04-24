{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-examples = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "EsounD"; version = "0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "PHO <pho at cielonegro dot org>";
      homepage = "http://cielonegro.org/EsounD.html";
      url = "";
      synopsis = "Type-safe bindings to EsounD (ESD; Enlightened Sound Daemon)";
      description = "Type-safe bindings to EsounD: <http://www.tux.org/~ricdude/EsounD.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
          (hsPkgs."bindings-EsounD" or ((hsPkgs.pkgs-errors).buildDepError "bindings-EsounD"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."regions" or ((hsPkgs.pkgs-errors).buildDepError "regions"))
          (hsPkgs."safer-file-handles" or ((hsPkgs.pkgs-errors).buildDepError "safer-file-handles"))
          (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "hs-esd-player-example" = {
          buildable = if flags.build-examples then true else false;
          };
        };
      };
    }