{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "isohunt"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "reiner.pope@gmail.com";
      author = "Reiner Pope";
      homepage = "https://github.com/reinerp/isohunt";
      url = "";
      synopsis = "Bindings to the isoHunt torrent search API";
      description = "Bindings to the isoHunt torrent search API, as described in\n<http://ca.isohunt.com/forum/viewtopic.php?p=433527#433527>\n\nTo get started, see \"IsoHunt.Search\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."uri" or ((hsPkgs.pkgs-errors).buildDepError "uri"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }