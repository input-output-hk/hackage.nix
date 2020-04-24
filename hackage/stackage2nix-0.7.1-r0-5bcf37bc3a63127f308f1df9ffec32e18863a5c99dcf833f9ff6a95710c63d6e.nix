{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stackage2nix"; version = "0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bushevdv@gmail.com";
      author = "Dmitry Bushev\n, Benno Fünfstück";
      homepage = "https://github.com/typeable/stackage2nix#readme";
      url = "";
      synopsis = "Convert Stack files into Nix build instructions.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cabal2nix" or ((hsPkgs.pkgs-errors).buildDepError "cabal2nix"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."distribution-nixpkgs" or ((hsPkgs.pkgs-errors).buildDepError "distribution-nixpkgs"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."gitlib" or ((hsPkgs.pkgs-errors).buildDepError "gitlib"))
          (hsPkgs."gitlib-libgit2" or ((hsPkgs.pkgs-errors).buildDepError "gitlib-libgit2"))
          (hsPkgs."hopenssl" or ((hsPkgs.pkgs-errors).buildDepError "hopenssl"))
          (hsPkgs."inflections" or ((hsPkgs.pkgs-errors).buildDepError "inflections"))
          (hsPkgs."language-nix" or ((hsPkgs.pkgs-errors).buildDepError "language-nix"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."stackage-curator" or ((hsPkgs.pkgs-errors).buildDepError "stackage-curator"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "stackage2nix" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."stackage2nix" or ((hsPkgs.pkgs-errors).buildDepError "stackage2nix"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
            (hsPkgs."stackage2nix" or ((hsPkgs.pkgs-errors).buildDepError "stackage2nix"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }