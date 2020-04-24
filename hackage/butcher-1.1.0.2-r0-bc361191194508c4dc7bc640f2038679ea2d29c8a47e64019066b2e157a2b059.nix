{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { butcher-dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "butcher"; version = "1.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016-2017 Lennart Spitzner";
      maintainer = "Lennart Spitzner <hexagoxel@hexagoxel.de>";
      author = "Lennart Spitzner";
      homepage = "https://github.com/lspitzner/butcher/";
      url = "";
      synopsis = "Chops a command or program invocation into digestable pieces.";
      description = "See the <https://github.com/lspitzner/butcher/blob/master/README.md README> (it is properly formatted on github).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."unsafe" or ((hsPkgs.pkgs-errors).buildDepError "unsafe"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."microlens-th" or ((hsPkgs.pkgs-errors).buildDepError "microlens-th"))
          (hsPkgs."multistate" or ((hsPkgs.pkgs-errors).buildDepError "multistate"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."deque" or ((hsPkgs.pkgs-errors).buildDepError "deque"))
          ] ++ (pkgs.lib).optional (flags.butcher-dev) (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."butcher" or ((hsPkgs.pkgs-errors).buildDepError "butcher"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            (hsPkgs."unsafe" or ((hsPkgs.pkgs-errors).buildDepError "unsafe"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."microlens-th" or ((hsPkgs.pkgs-errors).buildDepError "microlens-th"))
            (hsPkgs."multistate" or ((hsPkgs.pkgs-errors).buildDepError "multistate"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
            (hsPkgs."deque" or ((hsPkgs.pkgs-errors).buildDepError "deque"))
            ] ++ (pkgs.lib).optional (flags.butcher-dev) (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"));
          buildable = if flags.butcher-dev then true else false;
          };
        };
      };
    }