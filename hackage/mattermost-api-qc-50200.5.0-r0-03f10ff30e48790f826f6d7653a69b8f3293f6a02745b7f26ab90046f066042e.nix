{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "mattermost-api-qc"; version = "50200.5.0"; };
      license = "ISC";
      copyright = "2017 Kevin Quick";
      maintainer = "kquick@galois.com";
      author = "Kevin Quick";
      homepage = "https://github.com/matterhorn-chat/mattermost-api-qc";
      url = "";
      synopsis = "QuickCheck instances for the Mattermost client API library";
      description = "A library providing QuickCheck for the mattermost-api\nlibrary to allow testing.  This is provided as a\nseparate library to allow use of the API library\nwithout testing dependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mattermost-api" or ((hsPkgs.pkgs-errors).buildDepError "mattermost-api"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }