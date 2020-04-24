{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-these = true; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "patch"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maintainer@obsidian.systems";
      author = "Ryan Trinkle";
      homepage = "https://obsidian.systems";
      url = "";
      synopsis = "Infrastructure for writing patches which act on other types.";
      description = "In this library, a patch is something which can be applied, analogous to a\nfunction, and which distinguishes returning the argument it was provided from\nreturning something else.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."constraints-extras" or ((hsPkgs.pkgs-errors).buildDepError "constraints-extras"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."dependent-map" or ((hsPkgs.pkgs-errors).buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum"))
          (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."witherable" or ((hsPkgs.pkgs-errors).buildDepError "witherable"))
          ] ++ (if flags.split-these
          then [
            (hsPkgs."these" or ((hsPkgs.pkgs-errors).buildDepError "these"))
            (hsPkgs."semialign" or ((hsPkgs.pkgs-errors).buildDepError "semialign"))
            (hsPkgs."monoidal-containers" or ((hsPkgs.pkgs-errors).buildDepError "monoidal-containers"))
            ]
          else [
            (hsPkgs."these" or ((hsPkgs.pkgs-errors).buildDepError "these"))
            (hsPkgs."monoidal-containers" or ((hsPkgs.pkgs-errors).buildDepError "monoidal-containers"))
            ]);
        buildable = true;
        };
      tests = {
        "hlint" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."filemanip" or ((hsPkgs.pkgs-errors).buildDepError "filemanip"))
            (hsPkgs."hlint" or ((hsPkgs.pkgs-errors).buildDepError "hlint"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        };
      };
    }