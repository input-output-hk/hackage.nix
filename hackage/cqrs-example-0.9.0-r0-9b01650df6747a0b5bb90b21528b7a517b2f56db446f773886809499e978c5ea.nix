{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cqrs-example"; version = "0.9.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "spam@scientician.net";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Example for cqrs package";
      description = "Example for cqrs package";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cqrs-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."cqrs" or ((hsPkgs.pkgs-errors).buildDepError "cqrs"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."derive" or ((hsPkgs.pkgs-errors).buildDepError "derive"))
            (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."wai-middleware-static" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-static"))
            (hsPkgs."wai-eventsource" or ((hsPkgs.pkgs-errors).buildDepError "wai-eventsource"))
            ];
          buildable = true;
          };
        };
      };
    }