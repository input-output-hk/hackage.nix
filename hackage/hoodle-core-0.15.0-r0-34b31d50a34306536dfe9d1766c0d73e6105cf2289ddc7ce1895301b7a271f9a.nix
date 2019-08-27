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
    flags = { dyre = false; gtk3 = false; hub = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hoodle-core"; version = "0.15.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/hoodle";
      url = "";
      synopsis = "Core library for hoodle";
      description = "Hoodle is a pen notetaking program written in haskell.\nhoodle-core is the core library written in haskell and\nusing gtk2hs";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cairo" or (buildDepError "cairo"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."configurator" or (buildDepError "configurator"))
          (hsPkgs."coroutine-object" or (buildDepError "coroutine-object"))
          (hsPkgs."Diff" or (buildDepError "Diff"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
          (hsPkgs."gd" or (buildDepError "gd"))
          (hsPkgs."handa-gdata" or (buildDepError "handa-gdata"))
          (hsPkgs."hoodle-builder" or (buildDepError "hoodle-builder"))
          (hsPkgs."hoodle-parser" or (buildDepError "hoodle-parser"))
          (hsPkgs."hoodle-publish" or (buildDepError "hoodle-publish"))
          (hsPkgs."hoodle-render" or (buildDepError "hoodle-render"))
          (hsPkgs."hoodle-types" or (buildDepError "hoodle-types"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."pango" or (buildDepError "pango"))
          (hsPkgs."poppler" or (buildDepError "poppler"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."svgcairo" or (buildDepError "svgcairo"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-free" or (buildDepError "transformers-free"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          (hsPkgs."xournal-parser" or (buildDepError "xournal-parser"))
          ] ++ (pkgs.lib).optional (flags.dyre) (hsPkgs."dyre" or (buildDepError "dyre"))) ++ (if flags.gtk3
          then [ (hsPkgs."gtk3" or (buildDepError "gtk3")) ]
          else [
            (hsPkgs."gtk" or (buildDepError "gtk"))
            ])) ++ (pkgs.lib).optionals (flags.hub) [
          (hsPkgs."dbus" or (buildDepError "dbus"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-info" or (buildDepError "network-info"))
          (hsPkgs."network-simple" or (buildDepError "network-simple"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
          (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          ];
        libs = [
          (pkgs."X11" or (sysDepError "X11"))
          (pkgs."Xi" or (sysDepError "Xi"))
          (pkgs."dl" or (sysDepError "dl"))
          (pkgs."pthread" or (sysDepError "pthread"))
          ];
        };
      };
    }