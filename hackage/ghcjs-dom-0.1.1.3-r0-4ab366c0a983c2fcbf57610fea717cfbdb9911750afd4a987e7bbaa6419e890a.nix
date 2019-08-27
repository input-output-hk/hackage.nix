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
    flags = {
      ghcjs = true;
      jsffi = true;
      webkit = false;
      jsc = false;
      gtk3 = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghcjs-dom"; version = "0.1.1.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
      author = "Hamish Mackenzie";
      homepage = "";
      url = "";
      synopsis = "DOM library that supports both GHCJS and WebKitGTK";
      description = "Documentent Object Model (DOM) functions that work with\nGHCJS, but can also be used with GHC and WebKitGTK.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (pkgs.lib).optional (flags.ghcjs) (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))) ++ (pkgs.lib).optional (flags.ghcjs && flags.jsffi) (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))) ++ (pkgs.lib).optionals (!flags.ghcjs || flags.webkit) ([
          (hsPkgs."glib" or (buildDepError "glib"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ] ++ (if flags.gtk3
          then [
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."webkitgtk3" or (buildDepError "webkitgtk3"))
            ]
          else [
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."webkit" or (buildDepError "webkit"))
            ]));
        };
      };
    }