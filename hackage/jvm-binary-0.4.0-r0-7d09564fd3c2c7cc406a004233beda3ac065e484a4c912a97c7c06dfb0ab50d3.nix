{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "jvm-binary"; version = "0.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Christian Gram Kalhauge <kalhauge@cs.ucla.edu>";
      author = "Christian Gram Kalhauge";
      homepage = "https://github.com/ucla-pls/jvm-binary#readme";
      url = "";
      synopsis = "A library for reading Java class-files";
      description = "A library for reading Java class-files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."deriving-compat" or ((hsPkgs.pkgs-errors).buildDepError "deriving-compat"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "jvm-binary-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."deriving-compat" or ((hsPkgs.pkgs-errors).buildDepError "deriving-compat"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."generic-random" or ((hsPkgs.pkgs-errors).buildDepError "generic-random"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-discover" or ((hsPkgs.pkgs-errors).buildDepError "hspec-discover"))
            (hsPkgs."hspec-expectations-pretty-diff" or ((hsPkgs.pkgs-errors).buildDepError "hspec-expectations-pretty-diff"))
            (hsPkgs."jvm-binary" or ((hsPkgs.pkgs-errors).buildDepError "jvm-binary"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "jvm-binary-benchmarks" = {
          depends = [
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."deriving-compat" or ((hsPkgs.pkgs-errors).buildDepError "deriving-compat"))
            (hsPkgs."jvm-binary" or ((hsPkgs.pkgs-errors).buildDepError "jvm-binary"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }