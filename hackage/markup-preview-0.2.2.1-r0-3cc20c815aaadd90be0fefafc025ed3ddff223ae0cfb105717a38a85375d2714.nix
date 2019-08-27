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
      identifier = { name = "markup-preview"; version = "0.2.2.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "mhitza@gmail.com";
      author = "Marius Ghita";
      homepage = "";
      url = "";
      synopsis = "A simple markup document preview (markdown, textile, reStructuredText)";
      description = "A GUI application that renders the markup documents (markdown, textile, reStructuredText) into\nHTML and presents them into a web view. It also reloads the content automatically when the source\nfile changes.\n\nChanges from 0.1.0.0:\n\n* Added command line options e.g. markup file can be specified when starting the program.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "markup-preview" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gtk2hs-buildtools" or (buildDepError "gtk2hs-buildtools"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."webkit" or (buildDepError "webkit"))
            (hsPkgs."pandoc" or (buildDepError "pandoc"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."glib" or (buildDepError "glib"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }