{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "geek"; version = "1.0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "http://github.com/nfjinjing/geek";
      url = "";
      synopsis = "Geek blog engine";
      description = "A dynamic blog engine, customizable with standard web technology, i.e. HTML, CSS and Javascript (JSON)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
          (hsPkgs."air" or ((hsPkgs.pkgs-errors).buildDepError "air"))
          (hsPkgs."air-extra" or ((hsPkgs.pkgs-errors).buildDepError "air-extra"))
          (hsPkgs."air-spec" or ((hsPkgs.pkgs-errors).buildDepError "air-spec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."fsnotify" or ((hsPkgs.pkgs-errors).buildDepError "fsnotify"))
          (hsPkgs."hack2" or ((hsPkgs.pkgs-errors).buildDepError "hack2"))
          (hsPkgs."hack2-contrib" or ((hsPkgs.pkgs-errors).buildDepError "hack2-contrib"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."miku" or ((hsPkgs.pkgs-errors).buildDepError "miku"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-icu" or ((hsPkgs.pkgs-errors).buildDepError "text-icu"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
          ];
        buildable = true;
        };
      };
    }