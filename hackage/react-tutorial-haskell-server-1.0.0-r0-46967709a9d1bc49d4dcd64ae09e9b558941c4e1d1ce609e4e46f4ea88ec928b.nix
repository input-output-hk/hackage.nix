{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "react-tutorial-haskell-server";
        version = "1.0.0";
        };
      license = "AGPL-3.0-only";
      copyright = "(c) Alexander Berntsen 2016";
      maintainer = "alexander@plaimi.net";
      author = "Alexander Berntsen";
      homepage = "";
      url = "";
      synopsis = "react-tutorial web server";
      description = "Haskell server for Facebook's react-tutorial.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "server" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }