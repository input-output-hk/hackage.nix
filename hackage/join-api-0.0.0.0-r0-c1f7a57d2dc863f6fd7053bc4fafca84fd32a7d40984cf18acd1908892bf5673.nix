{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "join-api"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Kevin Cotrone";
      maintainer = "kevincotrone@gmail.com";
      author = "Kevin Cotrone";
      homepage = "https://github.com/cotrone/join-api#readme";
      url = "";
      synopsis = "Bindings for Join push notifications";
      description = "Bindings to the API for Join's notification system";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."url" or ((hsPkgs.pkgs-errors).buildDepError "url"))
          (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }