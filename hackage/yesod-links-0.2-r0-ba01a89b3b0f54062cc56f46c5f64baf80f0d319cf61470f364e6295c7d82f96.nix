{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod-links"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@pbrisbin.com";
      author = "Patrick Brisbin";
      homepage = "http://github.com/pbrisbin/yesod-goodies/yesod-links";
      url = "";
      synopsis = "A typeclass which simplifies creating link widgets throughout your site";
      description = "A yesod goody, yesod links";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          ];
        buildable = true;
        };
      };
    }