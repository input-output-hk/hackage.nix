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
      identifier = { name = "tsession"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Florian Micheler";
      maintainer = "Florian Micheler <hackage@micheler.net>";
      author = "Florian Micheler <hackage@micheler.net>";
      homepage = "";
      url = "";
      synopsis = "A Transaction Framework for Web Applications";
      description = "The concept of this web transaction framework is influenced by sessions, transactions and software transactional memory.\nTo web-developers it offers  sessions with integrated transaction management that has an included server-side storage of key-value pairs. The transactions can be spanned over multiple web requests and only affect the database when a commit is instructed.\nAdditionally, the sessions have access to the (not yet committed) key-value pairs and the status (e.g., the last requested page) of all other sessions that are active. As sessions have to be canceled after a given timeout, the framework has a garbage collector that safely cleans up the timed out sessions. The framework introduces a monad which encapsulates all the logic of the transactions and frees them of side effects. This is a concept known from the STM--monad and like in STM, the transactions cannot dead-lock each other.\n\nFor more information check my master thesis:\n\n<http://stud.micheler.net/master.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      };
    }