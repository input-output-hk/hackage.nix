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
    flags = { poppler = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hxournal"; version = "0.6.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/hxournal";
      url = "";
      synopsis = "A pen notetaking program written in haskell";
      description = "notetaking program written in haskell and gtk2hs";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = if flags.poppler
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."monad-coroutine" or (buildDepError "monad-coroutine"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."xournal-types" or (buildDepError "xournal-types"))
            (hsPkgs."xournal-parser" or (buildDepError "xournal-parser"))
            (hsPkgs."xournal-render" or (buildDepError "xournal-render"))
            (hsPkgs."xournal-builder" or (buildDepError "xournal-builder"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."double-conversion" or (buildDepError "double-conversion"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."poppler" or (buildDepError "poppler"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."TypeCompose" or (buildDepError "TypeCompose"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."dyre" or (buildDepError "dyre"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."monad-coroutine" or (buildDepError "monad-coroutine"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."xournal-types" or (buildDepError "xournal-types"))
            (hsPkgs."xournal-parser" or (buildDepError "xournal-parser"))
            (hsPkgs."xournal-render" or (buildDepError "xournal-render"))
            (hsPkgs."xournal-builder" or (buildDepError "xournal-builder"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."double-conversion" or (buildDepError "double-conversion"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."configurator" or (buildDepError "configurator"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."TypeCompose" or (buildDepError "TypeCompose"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."dyre" or (buildDepError "dyre"))
            ];
        buildable = true;
        };
      exes = {
        "hxournal" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."hxournal" or (buildDepError "hxournal"))
            ];
          buildable = true;
          };
        };
      };
    }