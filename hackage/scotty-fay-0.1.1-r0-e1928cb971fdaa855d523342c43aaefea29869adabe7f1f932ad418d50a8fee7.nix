{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "scotty-fay"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Harry Garrood <harry@garrood.me>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Fay integration for Scotty.";
      description = "Fay integration for Scotty. For more information, please see <https://github.com/hdgarrood/scotty-fay>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
          (hsPkgs."fay" or ((hsPkgs.pkgs-errors).buildDepError "fay"))
          (hsPkgs."fay-jquery" or ((hsPkgs.pkgs-errors).buildDepError "fay-jquery"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          ];
        buildable = true;
        };
      tests = {
        "scotty-fay-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
            (hsPkgs."fay" or ((hsPkgs.pkgs-errors).buildDepError "fay"))
            (hsPkgs."fay-jquery" or ((hsPkgs.pkgs-errors).buildDepError "fay-jquery"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."wai-test" or ((hsPkgs.pkgs-errors).buildDepError "wai-test"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }