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
      specVersion = "1.6";
      identifier = { name = "Nomyx"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "corentin.dupont@gmail.com";
      author = "Corentin Dupont";
      homepage = "http://www.nomyx.net";
      url = "";
      synopsis = "A Nomic game in haskell";
      description = "A Nomic game in Haskell, with a dedicated language to create new rules.\n\nNomyx is a fabulous and strange game where you have the right to change the rules in the middle of the game!\nIndeed, changing the rules is the goal of the game. Changing a rule is considered as a move. Of course even that could be changed! The original (paper) game: www.nomic.net";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Nomyx" = {
          depends = [
            (hsPkgs."Nomyx-Language" or (buildDepError "Nomyx-Language"))
            (hsPkgs."DebugTraceHelpers" or (buildDepError "DebugTraceHelpers"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."MonadCatchIO-mtl" or (buildDepError "MonadCatchIO-mtl"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-lens" or (buildDepError "data-lens"))
            (hsPkgs."data-lens-template" or (buildDepError "data-lens-template"))
            (hsPkgs."data-lens-fd" or (buildDepError "data-lens-fd"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."fb" or (buildDepError "fb"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."happstack-authenticate" or (buildDepError "happstack-authenticate"))
            (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."hint-server" or (buildDepError "hint-server"))
            (hsPkgs."hscolour" or (buildDepError "hscolour"))
            (hsPkgs."ixset" or (buildDepError "ixset"))
            (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."reform" or (buildDepError "reform"))
            (hsPkgs."reform-blaze" or (buildDepError "reform-blaze"))
            (hsPkgs."reform-happstack" or (buildDepError "reform-happstack"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."web-routes" or (buildDepError "web-routes"))
            (hsPkgs."web-routes-happstack" or (buildDepError "web-routes-happstack"))
            (hsPkgs."web-routes-regular" or (buildDepError "web-routes-regular"))
            (hsPkgs."web-routes-th" or (buildDepError "web-routes-th"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
          buildable = true;
          };
        };
      };
    }