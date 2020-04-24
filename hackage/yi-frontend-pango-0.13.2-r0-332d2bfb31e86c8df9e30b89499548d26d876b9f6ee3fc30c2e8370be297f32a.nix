{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yi-frontend-pango"; version = "0.13.2"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Yi developers <yi-devel@googlegroups.com>";
      author = "";
      homepage = "https://github.com/yi-editor/yi#readme";
      url = "";
      synopsis = "Pango frontend for Yi editor";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."microlens-platform" or ((hsPkgs.pkgs-errors).buildDepError "microlens-platform"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."oo-prototypes" or ((hsPkgs.pkgs-errors).buildDepError "oo-prototypes"))
          (hsPkgs."pango" or ((hsPkgs.pkgs-errors).buildDepError "pango"))
          (hsPkgs."pointedlist" or ((hsPkgs.pkgs-errors).buildDepError "pointedlist"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."yi-core" or ((hsPkgs.pkgs-errors).buildDepError "yi-core"))
          (hsPkgs."yi-language" or ((hsPkgs.pkgs-errors).buildDepError "yi-language"))
          (hsPkgs."yi-rope" or ((hsPkgs.pkgs-errors).buildDepError "yi-rope"))
          ];
        buildable = true;
        };
      };
    }