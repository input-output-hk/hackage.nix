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
      identifier = { name = "stm-linkedlist"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Joseph Adams 2011";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "";
      url = "";
      synopsis = "Mutable, doubly linked lists for STM";
      description = "Doubly linked lists are often used in imperative languages to maintain a\ncollection of objects such that an object can remove itself easily.  The\nsame idea applies here.  Thanks to STM, these lists can be shared among\nthreads with little effort.\n\nSuppose you have a thread listening for events.  You want to dispatch\nevents to any thread that opts in.  You could write a function that\ninstalls an event handler, performs an action, and removes the handler:\n\n>withEventHandler list handler action =\n>    bracket (atomically \$ LinkedList.append handler list)\n>            (atomically . LinkedList.delete)\n>            (\\_ -> action)\n\nThen, you could have your listener thread dispatch events using a function\nlike this:\n\n>dispatchEvent list event = do\n>    handlers <- atomically \$ LinkedList.toList list\n>    forM_ handlers \$ \\handler -> handler event";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."stm" or (buildDepError "stm"))
          ];
        };
      };
    }