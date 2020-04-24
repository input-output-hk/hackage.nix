{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "XMPP"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "newanon@yandex.ru";
      author = "Magnus Henoch,\nKagami <newanon@yandex.ru>,\nGrigory Holomiev <omever@gmail.com>";
      homepage = "http://kagami.touhou.ru/projects/show/matsuri";
      url = "";
      synopsis = "XMPP library";
      description = "XMPP library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."hsdns" or ((hsPkgs.pkgs-errors).buildDepError "hsdns"))
          ];
        buildable = true;
        };
      };
    }