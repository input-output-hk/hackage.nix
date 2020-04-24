{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hlwm"; version = "0.1.0.1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "<hpd@hpdeifel.de>";
      author = "Hans-Peter Deifel";
      homepage = "";
      url = "";
      synopsis = "Bindings to the herbstluftwm window manager";
      description = "A client-side IPC implementation for herbstluftwm.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."monads-tf" or ((hsPkgs.pkgs-errors).buildDepError "monads-tf"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "hherbstclient" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."monads-tf" or ((hsPkgs.pkgs-errors).buildDepError "monads-tf"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."hlwm" or ((hsPkgs.pkgs-errors).buildDepError "hlwm"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }