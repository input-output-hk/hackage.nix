{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0.1";
      identifier = { name = "dingo-example"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Dingo Example";
      description = "Example application for the Dingo Rich Internet Application platform.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dingo-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."dingo-core" or ((hsPkgs.pkgs-errors).buildDepError "dingo-core"))
            (hsPkgs."dingo-widgets" or ((hsPkgs.pkgs-errors).buildDepError "dingo-widgets"))
            (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
            (hsPkgs."shakespeare-js" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare-js"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }