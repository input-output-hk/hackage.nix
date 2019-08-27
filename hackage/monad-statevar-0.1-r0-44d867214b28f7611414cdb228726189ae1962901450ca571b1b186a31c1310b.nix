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
      identifier = { name = "monad-statevar"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Joseph Adams 2013";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "http://github.com/joeyadams/hs-monad-statevar";
      url = "";
      synopsis = "Concise, overloaded accessors for IORef, STRef, TVar";
      description = "Overloaded 'get' and 'put' for state variables ('IORef', 'STRef', 'TVar')\nto make reading and writing more concise.\n\nInspired by the StateVar package by Sven Panne, with the following\ndifferences:\n\n* Supports variables in other monads besides 'IO' (e.g. 'TVar', 'STRef').\n\n* Provides non-infix 'put', 'modify', etc.\n\n* Does not provide concrete state variables (i.e. ones where you supply\nget and put callbacks).  If you want this feature, please submit an\nissue.\n\n* Named \\\"Control.Monad.StateVar\\\" instead of \\\"Data.StateVar\\\",\nto avoid a module naming conflict.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."monad-statevar" or (buildDepError "monad-statevar"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          };
        };
      };
    }