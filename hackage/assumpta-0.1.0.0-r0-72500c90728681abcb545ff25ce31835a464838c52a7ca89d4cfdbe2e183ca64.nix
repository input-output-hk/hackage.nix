{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { stack-based-tests = false; warnmore = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "assumpta"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "2020 phlummox";
      maintainer = "phlummox2@gmail.com";
      author = "phlummox";
      homepage = "https://github.com/phlummox/assumpta#readme";
      url = "";
      synopsis = "An SMTP client library";
      description = "An SMTP client library,\nwhich allows you to send email via\nan SMTP server.\n\nFor further details, please see the README on GitHub at\n<https://github.com/phlummox/assumpta#readme>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."assumpta-core" or ((hsPkgs.pkgs-errors).buildDepError "assumpta-core"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."connection" or ((hsPkgs.pkgs-errors).buildDepError "connection"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."mime-mail" or ((hsPkgs.pkgs-errors).buildDepError "mime-mail"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "hspec-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."assumpta" or ((hsPkgs.pkgs-errors).buildDepError "assumpta"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."assumpta-core" or ((hsPkgs.pkgs-errors).buildDepError "assumpta-core"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."quickcheck-io" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-io"))
            ];
          buildable = true;
          };
        "compile-examples" = {
          depends = (pkgs.lib).optionals (!(!flags.stack-based-tests)) [
            (hsPkgs."assumpta" or ((hsPkgs.pkgs-errors).buildDepError "assumpta"))
            (hsPkgs."assumpta-core" or ((hsPkgs.pkgs-errors).buildDepError "assumpta-core"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."shelly" or ((hsPkgs.pkgs-errors).buildDepError "shelly"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if !flags.stack-based-tests then false else true;
          };
        };
      };
    }