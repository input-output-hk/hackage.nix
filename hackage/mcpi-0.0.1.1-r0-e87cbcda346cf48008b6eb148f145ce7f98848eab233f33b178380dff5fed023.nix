{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-examples = true; build-debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "mcpi"; version = "0.0.1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "dburke.gw@gmail.com";
      author = "Douglas Burke (dburke.gw@gmail.com)";
      homepage = "https://github.com/DougBurke/hmcpi";
      url = "";
      synopsis = "Connect to MineCraft running on a Raspberry PI.";
      description = "The MineCraft edition for Raspberry PI comes with a Java and\nPython API. See \"Network.MineCraft.Pi.Client\" for a basic\nexample.\n\nThis is a *very* basic, and *incomplete* Haskell version. I\nfully expect everything to change in later versions.\n\nA number of very simple examples are included in the examples/ directory,\nas well as a program that lets you interact with MineCraft directly.\n\nPlease see the TODO.md file in the source code for an incomplete\nlist of possible changes, and the CHANGELOG file for changes\nin the module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "flatten" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mcpi" or ((hsPkgs.pkgs-errors).buildDepError "mcpi"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "freefall" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mcpi" or ((hsPkgs.pkgs-errors).buildDepError "mcpi"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "isongold" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mcpi" or ((hsPkgs.pkgs-errors).buildDepError "mcpi"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "xjump" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mcpi" or ((hsPkgs.pkgs-errors).buildDepError "mcpi"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "shapes" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mcpi" or ((hsPkgs.pkgs-errors).buildDepError "mcpi"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "hmcpi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            ];
          buildable = if !flags.build-debug then false else true;
          };
        "debugmcpi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mcpi" or ((hsPkgs.pkgs-errors).buildDepError "mcpi"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = if !flags.build-debug then false else true;
          };
        };
      };
    }