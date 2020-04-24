{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "bamboo-plugin-photo"; version = "2009.7.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/hack/tree/master";
      url = "";
      synopsis = "A photo album middleware";
      description = "It checks for a plugin tag in html and generate a photo album with thumbnails in place, by some internal IO options. The current version makes some assumptions on where the photo should be stored, so it's mostly useful for bamboo. A download of appropriate javascript is required, e.g. innerfade.js.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mps" or ((hsPkgs.pkgs-errors).buildDepError "mps"))
          (hsPkgs."hack" or ((hsPkgs.pkgs-errors).buildDepError "hack"))
          (hsPkgs."hack-contrib" or ((hsPkgs.pkgs-errors).buildDepError "hack-contrib"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          ];
        buildable = true;
        };
      };
    }