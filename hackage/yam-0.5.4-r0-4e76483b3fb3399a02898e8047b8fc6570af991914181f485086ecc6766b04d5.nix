{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "yam"; version = "0.5.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Daniel YU";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/yam/yam#readme";
      url = "";
      synopsis = "Yam Web";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
          (hsPkgs."salak" or ((hsPkgs.pkgs-errors).buildDepError "salak"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
          (hsPkgs."servant-swagger" or ((hsPkgs.pkgs-errors).buildDepError "servant-swagger"))
          (hsPkgs."servant-swagger-ui" or ((hsPkgs.pkgs-errors).buildDepError "servant-swagger-ui"))
          (hsPkgs."swagger2" or ((hsPkgs.pkgs-errors).buildDepError "swagger2"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vault" or ((hsPkgs.pkgs-errors).buildDepError "vault"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."fast-logger" or ((hsPkgs.pkgs-errors).buildDepError "fast-logger"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
            (hsPkgs."salak" or ((hsPkgs.pkgs-errors).buildDepError "salak"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
            (hsPkgs."servant-swagger" or ((hsPkgs.pkgs-errors).buildDepError "servant-swagger"))
            (hsPkgs."servant-swagger-ui" or ((hsPkgs.pkgs-errors).buildDepError "servant-swagger-ui"))
            (hsPkgs."swagger2" or ((hsPkgs.pkgs-errors).buildDepError "swagger2"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vault" or ((hsPkgs.pkgs-errors).buildDepError "vault"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }