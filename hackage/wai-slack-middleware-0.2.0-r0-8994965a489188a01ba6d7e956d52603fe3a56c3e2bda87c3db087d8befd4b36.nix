{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-slack-middleware"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Sibi";
      maintainer = "sibi@psibi.in";
      author = "Sibi Prabakaran";
      homepage = "https://github.com/psibi/wai-slack-middleware#readme";
      url = "";
      synopsis = "A Slack middleware for WAI";
      description = "Logs the request information into Slack through webhook from\na WAI application.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          ];
        buildable = true;
        };
      tests = {
        "wai-slack-middleware-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wai-slack-middleware" or ((hsPkgs.pkgs-errors).buildDepError "wai-slack-middleware"))
            ];
          buildable = true;
          };
        };
      };
    }