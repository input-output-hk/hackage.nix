{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dialog"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Nikita Churaev";
      maintainer = "Nikita Churaev <lamefun.x0r@gmail.com>";
      author = "Nikita Churaev <lamefun.x0r@gmail.com>";
      homepage = "https://gitlab.com/lamefun/dialog";
      url = "";
      synopsis = "Simple dialog-based user interfaces";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."gtk3" or ((hsPkgs.pkgs-errors).buildDepError "gtk3"))
          (hsPkgs."webkitgtk3" or ((hsPkgs.pkgs-errors).buildDepError "webkitgtk3"))
          (hsPkgs."open-browser" or ((hsPkgs.pkgs-errors).buildDepError "open-browser"))
          ];
        buildable = true;
        };
      };
    }