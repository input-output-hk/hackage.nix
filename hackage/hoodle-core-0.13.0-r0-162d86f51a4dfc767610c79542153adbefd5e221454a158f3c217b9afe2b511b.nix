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
      specVersion = "1.8";
      identifier = { name = "hoodle-core"; version = "0.13.0"; };
      license = "GPL-3.0-only";
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
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."cairo" or (buildDepError "cairo"))
          (hsPkgs."pango" or (buildDepError "pango"))
          (hsPkgs."gd" or (buildDepError "gd"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."coroutine-object" or (buildDepError "coroutine-object"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-free" or (buildDepError "transformers-free"))
          (hsPkgs."hoodle-types" or (buildDepError "hoodle-types"))
          (hsPkgs."hoodle-parser" or (buildDepError "hoodle-parser"))
          (hsPkgs."hoodle-builder" or (buildDepError "hoodle-builder"))
          (hsPkgs."xournal-parser" or (buildDepError "xournal-parser"))
          (hsPkgs."hoodle-render" or (buildDepError "hoodle-render"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."configurator" or (buildDepError "configurator"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."Diff" or (buildDepError "Diff"))
          (hsPkgs."dyre" or (buildDepError "dyre"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."poppler" or (buildDepError "poppler"))
          (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."svgcairo" or (buildDepError "svgcairo"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."dbus" or (buildDepError "dbus"))
          (hsPkgs."network-simple" or (buildDepError "network-simple"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."network-info" or (buildDepError "network-info"))
          ];
        libs = [
          (pkgs."X11" or (sysDepError "X11"))
          (pkgs."Xi" or (sysDepError "Xi"))
          (pkgs."dl" or (sysDepError "dl"))
          (pkgs."pthread" or (sysDepError "pthread"))
          ];
        buildable = true;
        };
      };
    }