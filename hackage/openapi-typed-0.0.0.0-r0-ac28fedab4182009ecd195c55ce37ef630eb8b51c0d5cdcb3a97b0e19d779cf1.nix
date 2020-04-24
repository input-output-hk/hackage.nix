{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "openapi-typed"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Meeshkan Oy";
      maintainer = "mike@meeshkan.com";
      author = "Mike Solomon";
      homepage = "https://github.com/meeshkan/openapi-haskell#readme";
      url = "";
      synopsis = "Types for OpenAPI";
      description = "Please see the README on GitHub at <https://github.com/meeshkan/openapi-haskell#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "openapi-typed-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."openapi-typed" or ((hsPkgs.pkgs-errors).buildDepError "openapi-typed"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."optics-core" or ((hsPkgs.pkgs-errors).buildDepError "optics-core"))
            (hsPkgs."optics-extra" or ((hsPkgs.pkgs-errors).buildDepError "optics-extra"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }