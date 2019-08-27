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
      specVersion = "1.4";
      identifier = { name = "snm"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Morrice <spoon@killersmurf.com>";
      author = "John Morrice <spoon@killersmurf.com>";
      homepage = "http://github.com/elginer/snm";
      url = "";
      synopsis = "The Simple Nice-Looking Manual Generator.";
      description = "snm allows you to write clean, web-friendly reports, user guides and manuals without having to edit fickle html.\n\nsnm allows you to structure your document in a modular fashion.\n\nsnm document sections are written in yaml and are easy to write and understand.\n\nsnm is a generator of small, valid xhtml files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."HsSyck" or (buildDepError "HsSyck"))
          (hsPkgs."spoonutil" or (buildDepError "spoonutil"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."xhtml" or (buildDepError "xhtml"))
          ];
        };
      exes = {
        "snm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."HsSyck" or (buildDepError "HsSyck"))
            (hsPkgs."spoonutil" or (buildDepError "spoonutil"))
            (hsPkgs."safe" or (buildDepError "safe"))
            ];
          };
        };
      };
    }