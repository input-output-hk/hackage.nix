{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "katip-rollbar"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Hardy Jones";
      maintainer = "jones3.hardy@gmail.com";
      author = "Hardy Jones";
      homepage = "https://github.com/joneshf/katip-rollbar#readme";
      url = "";
      synopsis = "Katip scribe that logs to Rollbar";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hostname" or ((hsPkgs.pkgs-errors).buildDepError "hostname"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."katip" or ((hsPkgs.pkgs-errors).buildDepError "katip"))
          (hsPkgs."rollbar-hs" or ((hsPkgs.pkgs-errors).buildDepError "rollbar-hs"))
          (hsPkgs."stm-chans" or ((hsPkgs.pkgs-errors).buildDepError "stm-chans"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }