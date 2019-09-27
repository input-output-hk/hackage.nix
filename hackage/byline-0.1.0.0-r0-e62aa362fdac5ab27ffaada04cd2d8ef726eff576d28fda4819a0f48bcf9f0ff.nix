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
    flags = { maintainer = false; build-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "byline"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "Copyright: (c) 2015 Peter J. Jones";
      maintainer = "Peter Jones <pjones@devalot.com>";
      author = "Peter Jones <pjones@devalot.com>";
      homepage = "http://github.com/pjones/byline";
      url = "";
      synopsis = "Library for creating command-line interfaces (colors, menus, etc.)";
      description = "Byline simplifies writing interactive terminal applications by\nbuilding upon @ansi-terminal@ and @haskeline@.  This makes it\npossible to print messages and prompts that include terminal escape\nsequences such as colors that are automatically disabled when\nstandard input is a file.  It also means that Byline works on both\nPOSIX-compatible systems and on Windows.\n\nThe primary features of Byline include printing messages, prompting\nfor input, and generating custom menus.  It was inspired by the\n@highline@ Ruby library and the @terminal@ library by Craig Roche.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."terminfo-hs" or (buildDepError "terminfo-hs"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "simple" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."byline" or (buildDepError "byline"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        "menu" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."byline" or (buildDepError "byline"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        };
      };
    }