{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "extract-dependencies"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "2015 André Barnabá";
      maintainer = "asakeron@gmail.com";
      author = "André Barnabá";
      homepage = "https://github.com/yamadapc/stack-run-auto";
      url = "";
      synopsis = "Given a hackage package outputs the list of its dependencies.";
      description = "Given a hackage package outputs the list of its dependencies. See our GitHub README. This is part of stack-run-auto.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."package-description-remote" or ((hsPkgs.pkgs-errors).buildDepError "package-description-remote"))
          ];
        buildable = true;
        };
      exes = {
        "extract-dependencies" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."package-description-remote" or ((hsPkgs.pkgs-errors).buildDepError "package-description-remote"))
            ];
          buildable = true;
          };
        };
      };
    }