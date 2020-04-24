{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hutton"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak <taylor@fausak.me>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A program for the button on Reddit.";
      description = "Hutton is a program for <https://www.reddit.com/r/thebutton the button> on\nReddit.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hutton" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."connection" or ((hsPkgs.pkgs-errors).buildDepError "connection"))
            (hsPkgs."flow" or ((hsPkgs.pkgs-errors).buildDepError "flow"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."rainbow" or ((hsPkgs.pkgs-errors).buildDepError "rainbow"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
            (hsPkgs."wuss" or ((hsPkgs.pkgs-errors).buildDepError "wuss"))
            ];
          buildable = true;
          };
        };
      };
    }