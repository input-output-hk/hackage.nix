{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.12";
      identifier = {
        name = "purescheme-wai-routing-core";
        version = "0.1.0.0";
        };
      license = "Apache-2.0";
      copyright = "2020 Fernando Rincon Martin";
      maintainer = "f.rincon@protonmail.com";
      author = "Fernando Rincon Martin";
      homepage = "https://github.com/purescheme/purescheme-wai-routing-core#readme";
      url = "";
      synopsis = "Simple Routing functions for Wai Applications";
      description = "Please see the README on GitHub at <https://github.com/purescheme/purescheme-wai-routing-core#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-media" or ((hsPkgs.pkgs-errors).buildDepError "http-media"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."interpolate" or ((hsPkgs.pkgs-errors).buildDepError "interpolate"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          ] ++ (pkgs.lib).optional (flags.development) (hsPkgs."placeholders" or ((hsPkgs.pkgs-errors).buildDepError "placeholders"));
        buildable = true;
        };
      exes = {
        "simple-routing-core-exe" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."purescheme-wai-routing-core" or ((hsPkgs.pkgs-errors).buildDepError "purescheme-wai-routing-core"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            ] ++ (pkgs.lib).optional (flags.development) (hsPkgs."placeholders" or ((hsPkgs.pkgs-errors).buildDepError "placeholders"));
          buildable = true;
          };
        };
      tests = {
        "simple-routing-core-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."purescheme-wai-routing-core" or ((hsPkgs.pkgs-errors).buildDepError "purescheme-wai-routing-core"))
            ] ++ (pkgs.lib).optional (flags.development) (hsPkgs."placeholders" or ((hsPkgs.pkgs-errors).buildDepError "placeholders"));
          buildable = true;
          };
        };
      };
    }