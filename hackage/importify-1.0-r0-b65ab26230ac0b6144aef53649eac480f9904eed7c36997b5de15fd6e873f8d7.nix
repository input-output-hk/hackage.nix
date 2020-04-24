{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "importify"; version = "1.0"; };
      license = "MIT";
      copyright = "2017 Serokell";
      maintainer = "Serokell <hi@serokell.io>";
      author = "@serokell";
      homepage = "https://github.com/serokell/importify";
      url = "";
      synopsis = "Tool for haskell imports refactoring";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
          (hsPkgs."autoexporter" or ((hsPkgs.pkgs-errors).buildDepError "autoexporter"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."fmt" or ((hsPkgs.pkgs-errors).buildDepError "fmt"))
          (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."haskell-names" or ((hsPkgs.pkgs-errors).buildDepError "haskell-names"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."hse-cpp" or ((hsPkgs.pkgs-errors).buildDepError "hse-cpp"))
          (hsPkgs."log-warper" or ((hsPkgs.pkgs-errors).buildDepError "log-warper"))
          (hsPkgs."microlens-platform" or ((hsPkgs.pkgs-errors).buildDepError "microlens-platform"))
          (hsPkgs."path" or ((hsPkgs.pkgs-errors).buildDepError "path"))
          (hsPkgs."path-io" or ((hsPkgs.pkgs-errors).buildDepError "path-io"))
          (hsPkgs."pretty-simple" or ((hsPkgs.pkgs-errors).buildDepError "pretty-simple"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-format" or ((hsPkgs.pkgs-errors).buildDepError "text-format"))
          (hsPkgs."turtle" or ((hsPkgs.pkgs-errors).buildDepError "turtle"))
          (hsPkgs."universum" or ((hsPkgs.pkgs-errors).buildDepError "universum"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "importify" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."importify" or ((hsPkgs.pkgs-errors).buildDepError "importify"))
            (hsPkgs."log-warper" or ((hsPkgs.pkgs-errors).buildDepError "log-warper"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."universum" or ((hsPkgs.pkgs-errors).buildDepError "universum"))
            ];
          buildable = true;
          };
        "golden-generator" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."importify" or ((hsPkgs.pkgs-errors).buildDepError "importify"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."path" or ((hsPkgs.pkgs-errors).buildDepError "path"))
            (hsPkgs."path-io" or ((hsPkgs.pkgs-errors).buildDepError "path-io"))
            (hsPkgs."universum" or ((hsPkgs.pkgs-errors).buildDepError "universum"))
            ];
          buildable = true;
          };
        };
      tests = {
        "importify-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."importify" or ((hsPkgs.pkgs-errors).buildDepError "importify"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."log-warper" or ((hsPkgs.pkgs-errors).buildDepError "log-warper"))
            (hsPkgs."microlens-platform" or ((hsPkgs.pkgs-errors).buildDepError "microlens-platform"))
            (hsPkgs."path" or ((hsPkgs.pkgs-errors).buildDepError "path"))
            (hsPkgs."path-io" or ((hsPkgs.pkgs-errors).buildDepError "path-io"))
            (hsPkgs."universum" or ((hsPkgs.pkgs-errors).buildDepError "universum"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }