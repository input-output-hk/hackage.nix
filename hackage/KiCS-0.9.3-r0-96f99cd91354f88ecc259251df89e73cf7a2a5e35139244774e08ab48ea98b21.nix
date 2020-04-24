{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "KiCS"; version = "0.9.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Björn Peemöller";
      author = "Bernd Braßel";
      homepage = "http://www.curry-language.org";
      url = "";
      synopsis = "A compiler from Curry to Haskell";
      description = "This package builds the Curry to Haskell compiler \"kics\".\nThis package also includes many Curry libraries.\nHave a look at the list of modules \"Curry.Module.*\"";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."curry-frontend" or ((hsPkgs.pkgs-errors).buildDepError "curry-frontend"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.kics or (pkgs.buildPackages.kics or ((hsPkgs.pkgs-errors).buildToolDepError "kics")))
          ];
        buildable = true;
        };
      exes = {
        "kics" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."curry-base" or ((hsPkgs.pkgs-errors).buildDepError "curry-base"))
            (hsPkgs."curry-frontend" or ((hsPkgs.pkgs-errors).buildDepError "curry-frontend"))
            ];
          buildable = true;
          };
        "kicsi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."readline" or ((hsPkgs.pkgs-errors).buildDepError "readline"))
            (hsPkgs."curry-base" or ((hsPkgs.pkgs-errors).buildDepError "curry-base"))
            (hsPkgs."curry-frontend" or ((hsPkgs.pkgs-errors).buildDepError "curry-frontend"))
            ];
          buildable = true;
          };
        };
      };
    }