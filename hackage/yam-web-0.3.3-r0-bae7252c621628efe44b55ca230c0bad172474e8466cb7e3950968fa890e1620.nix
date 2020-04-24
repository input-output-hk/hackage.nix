{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yam-web"; version = "0.3.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "";
      homepage = "https://github.com/leptonyu/yam#readme";
      url = "";
      synopsis = "Yam Web";
      description = "base web module for yam";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
          (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
          (hsPkgs."servant-swagger" or ((hsPkgs.pkgs-errors).buildDepError "servant-swagger"))
          (hsPkgs."servant-swagger-ui" or ((hsPkgs.pkgs-errors).buildDepError "servant-swagger-ui"))
          (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
          (hsPkgs."swagger2" or ((hsPkgs.pkgs-errors).buildDepError "swagger2"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
          (hsPkgs."vault" or ((hsPkgs.pkgs-errors).buildDepError "vault"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          (hsPkgs."yam-config" or ((hsPkgs.pkgs-errors).buildDepError "yam-config"))
          (hsPkgs."yam-logger" or ((hsPkgs.pkgs-errors).buildDepError "yam-logger"))
          (hsPkgs."yam-transaction" or ((hsPkgs.pkgs-errors).buildDepError "yam-transaction"))
          ];
        buildable = true;
        };
      exes = {
        "yam-web" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
            (hsPkgs."persistent-template" or ((hsPkgs.pkgs-errors).buildDepError "persistent-template"))
            (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
            (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
            (hsPkgs."servant-swagger" or ((hsPkgs.pkgs-errors).buildDepError "servant-swagger"))
            (hsPkgs."servant-swagger-ui" or ((hsPkgs.pkgs-errors).buildDepError "servant-swagger-ui"))
            (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
            (hsPkgs."swagger2" or ((hsPkgs.pkgs-errors).buildDepError "swagger2"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
            (hsPkgs."vault" or ((hsPkgs.pkgs-errors).buildDepError "vault"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."yam-config" or ((hsPkgs.pkgs-errors).buildDepError "yam-config"))
            (hsPkgs."yam-logger" or ((hsPkgs.pkgs-errors).buildDepError "yam-logger"))
            (hsPkgs."yam-transaction" or ((hsPkgs.pkgs-errors).buildDepError "yam-transaction"))
            (hsPkgs."yam-web" or ((hsPkgs.pkgs-errors).buildDepError "yam-web"))
            ];
          buildable = true;
          };
        };
      };
    }