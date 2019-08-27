let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."happstack-helpers" or (buildDepError "happstack-helpers"))
            (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."happstack" or (buildDepError "happstack"))
            (hsPkgs."hsp" or (buildDepError "hsp"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ConfigFile" or (buildDepError "ConfigFile"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."happstack-state" or (buildDepError "happstack-state"))
            ];
          };
        };
      };
    }