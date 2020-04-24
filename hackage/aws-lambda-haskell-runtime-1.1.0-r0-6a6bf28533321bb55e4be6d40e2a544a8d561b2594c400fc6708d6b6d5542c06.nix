{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "aws-lambda-haskell-runtime"; version = "1.1.0"; };
      license = "Apache-2.0";
      copyright = "2018 The Agile Monkeys SL";
      maintainer = "hackers@theagilemonkeys.com";
      author = "Nikita Tchayka";
      homepage = "https://github.com/theam/aws-lambda-haskell-runtime#readme";
      url = "";
      synopsis = "Haskell runtime for AWS Lambda";
      description = "Please see the README on GitHub at <https://github.com/theam/aws-lambda-haskell-runtime#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
          (hsPkgs."path" or ((hsPkgs.pkgs-errors).buildDepError "path"))
          (hsPkgs."path-io" or ((hsPkgs.pkgs-errors).buildDepError "path-io"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."safe-exceptions-checked" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions-checked"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
          ];
        buildable = true;
        };
      exes = {
        "bootstrap" = {
          depends = [
            (hsPkgs."aws-lambda-haskell-runtime" or ((hsPkgs.pkgs-errors).buildDepError "aws-lambda-haskell-runtime"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            ];
          buildable = true;
          };
        };
      tests = {
        "aws-lambda-haskell-runtime-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }