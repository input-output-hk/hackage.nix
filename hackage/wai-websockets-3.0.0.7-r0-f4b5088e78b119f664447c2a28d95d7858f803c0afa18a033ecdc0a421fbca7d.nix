{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "wai-websockets"; version = "3.0.0.7"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Jasper Van der Jeugt, Ting-Yen Lai";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "Provide a bridge between WAI and the websockets package.";
      description = "API docs and the README are available at <http://www.stackage.org/package/wai-websockets>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          ];
        buildable = true;
        };
      exes = {
        "wai-websockets-example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wai-websockets" or ((hsPkgs.pkgs-errors).buildDepError "wai-websockets"))
            (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."wai-app-static" or ((hsPkgs.pkgs-errors).buildDepError "wai-app-static"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }