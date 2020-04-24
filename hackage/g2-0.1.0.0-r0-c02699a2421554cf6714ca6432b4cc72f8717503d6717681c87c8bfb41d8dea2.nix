{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "g2"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "william.hallahan@yale.edu";
      author = "William Hallahan, Anton Xue";
      homepage = "";
      url = "";
      synopsis = "Haskell symbolic execution engine.";
      description = "A Haskell symbolic execution engine.\nFor details, please see: <https://github.com/BillHallahan/G2>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."concurrent-extra" or ((hsPkgs.pkgs-errors).buildDepError "concurrent-extra"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."hpc" or ((hsPkgs.pkgs-errors).buildDepError "hpc"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."liquidhaskell" or ((hsPkgs.pkgs-errors).buildDepError "liquidhaskell"))
          (hsPkgs."liquid-fixpoint" or ((hsPkgs.pkgs-errors).buildDepError "liquid-fixpoint"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."reducers" or ((hsPkgs.pkgs-errors).buildDepError "reducers"))
          (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
          (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."temporary-rc" or ((hsPkgs.pkgs-errors).buildDepError "temporary-rc"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "G2" = {
          depends = [
            (hsPkgs."g2" or ((hsPkgs.pkgs-errors).buildDepError "g2"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."hpc" or ((hsPkgs.pkgs-errors).buildDepError "hpc"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        "QuasiQuote" = {
          depends = [
            (hsPkgs."g2" or ((hsPkgs.pkgs-errors).buildDepError "g2"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."g2" or ((hsPkgs.pkgs-errors).buildDepError "g2"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."hpc" or ((hsPkgs.pkgs-errors).buildDepError "hpc"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }