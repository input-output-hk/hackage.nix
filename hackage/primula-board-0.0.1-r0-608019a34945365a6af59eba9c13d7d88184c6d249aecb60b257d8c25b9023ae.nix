{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "primula-board"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "newanon@yandex.ru";
      author = "Kagami <newanon@yandex.ru>";
      homepage = "http://kagami.touhou.ru/projects/show/primula";
      url = "";
      synopsis = "ImageBoard on Happstack and HSP";
      description = "Simple ImageBoard like wakaba on Happstack and HSP.\nMessages on board sended via jabber-bot\n(primula-bot package). Settings stored in\n~/.primularc file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "primula-board" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."happstack-helpers" or ((hsPkgs.pkgs-errors).buildDepError "happstack-helpers"))
            (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."happstack" or ((hsPkgs.pkgs-errors).buildDepError "happstack"))
            (hsPkgs."hsp" or ((hsPkgs.pkgs-errors).buildDepError "hsp"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."ConfigFile" or ((hsPkgs.pkgs-errors).buildDepError "ConfigFile"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."happstack-state" or ((hsPkgs.pkgs-errors).buildDepError "happstack-state"))
            ];
          buildable = true;
          };
        };
      };
    }