{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-gitrepo"; version = "0.3.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/yesod-gitrepo#readme";
      url = "";
      synopsis = "Host content provided by a Git repo";
      description = "Please see the README and generated docs at <https://www.stackage.org/package/yesod-gitrepo>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          ];
        buildable = true;
        };
      };
    }