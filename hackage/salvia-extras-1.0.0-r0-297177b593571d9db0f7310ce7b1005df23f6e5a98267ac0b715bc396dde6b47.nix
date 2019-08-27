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
      identifier = { name = "salvia-extras"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sfvisser@cs.uu.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Collection of non-fundamental handlers for the Salvia web server.";
      description = "Collection of non-fundamental handlers for the Salvia web server.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."clevercss" or (buildDepError "clevercss"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."salvia" or (buildDepError "salvia"))
          (hsPkgs."salvia-protocol" or (buildDepError "salvia-protocol"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."fclabels" or (buildDepError "fclabels"))
          (hsPkgs."hscolour" or (buildDepError "hscolour"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."filestore" or (buildDepError "filestore"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."monads-fd" or (buildDepError "monads-fd"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."HStringTemplate" or (buildDepError "HStringTemplate"))
          (hsPkgs."sendfile" or (buildDepError "sendfile"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."c10k" or (buildDepError "c10k"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."threadmanager" or (buildDepError "threadmanager"))
          ];
        };
      };
    }