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
    flags = { beta = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "darcs-fastconvert"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@mornfall.net";
      author = "Petr Rockai <me@mornfall.net>";
      homepage = "";
      url = "";
      synopsis = "Import/export git fast-import streams to/from darcs.";
      description = "The darcs-fastconvert tool allows you to both import\ngit repositories into darcs (using git fast-export)\nand export darcs repositories into git (using git\nfast-import). You may also achieve some success with\n3rd-party fast-import/fast-export tools, like\nbzr-fastimport although this is not explicitly\nsupported or tested. Often, converting from X to git\nand then to darcs works better than direct X to darcs\nconversion using 3rd-party tools.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "darcs-fastconvert" = {
          depends = [
            (hsPkgs."hashed-storage" or (buildDepError "hashed-storage"))
            (hsPkgs."cmdlib" or (buildDepError "cmdlib"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."datetime" or (buildDepError "datetime"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ] ++ (if flags.beta
            then [ (hsPkgs."darcs-beta" or (buildDepError "darcs-beta")) ]
            else [ (hsPkgs."darcs" or (buildDepError "darcs")) ]);
          buildable = true;
          };
        };
      };
    }