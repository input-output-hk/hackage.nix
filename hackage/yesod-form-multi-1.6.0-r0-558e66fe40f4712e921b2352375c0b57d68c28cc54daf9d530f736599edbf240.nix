{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-form-multi"; version = "1.6.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "James Burton <jamesejburton@gmail.com>";
      author = "James Burton <jamesejburton@gmail.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Multi-input form handling for Yesod Web Framework";
      description = "API docs and the README are available at <http://www.stackage.org/package/yesod-form-multi>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
          ] ++ (pkgs.lib).optional (flags.network-uri) (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"));
        buildable = true;
        };
      };
    }