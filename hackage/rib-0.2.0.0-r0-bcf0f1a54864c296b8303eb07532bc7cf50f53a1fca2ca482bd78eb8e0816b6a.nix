{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "rib"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sridhar Ratnakumar";
      maintainer = "srid@srid.ca";
      author = "Sridhar Ratnakumar";
      homepage = "https://github.com/srid/rib#readme";
      url = "";
      synopsis = "";
      description = "Haskell library for writing your own static site generator";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."clay" or ((hsPkgs.pkgs-errors).buildDepError "clay"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."fsnotify" or ((hsPkgs.pkgs-errors).buildDepError "fsnotify"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."lens-aeson" or ((hsPkgs.pkgs-errors).buildDepError "lens-aeson"))
          (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
          (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
          (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."skylighting" or ((hsPkgs.pkgs-errors).buildDepError "skylighting"))
          (hsPkgs."pandoc-include-code" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-include-code"))
          (hsPkgs."shake" or ((hsPkgs.pkgs-errors).buildDepError "shake"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."wai-app-static" or ((hsPkgs.pkgs-errors).buildDepError "wai-app-static"))
          (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
          ];
        buildable = true;
        };
      };
    }