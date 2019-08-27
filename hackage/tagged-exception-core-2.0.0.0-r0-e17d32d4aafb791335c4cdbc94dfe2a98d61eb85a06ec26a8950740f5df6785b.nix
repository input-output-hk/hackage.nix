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
    flags = { pedantic = false; base-ge-4_2 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tagged-exception-core"; version = "2.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009 - 2014, Peter Trsko";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trsko";
      homepage = "https://github.com/trskop/tagged-exception";
      url = "";
      synopsis = "Reflect exceptions using phantom types.";
      description = "This library provides interface similar to /extensible-exceptions/.  It\nintroduces @Throws@ monad transformer that uses phantom type to tag code that\nmay raise exception.  Intention is to make exceptions explicit and to enforce\nexception handling.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          ] ++ (if flags.base-ge-4_2
          then [ (hsPkgs."base" or (buildDepError "base")) ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            ]);
        };
      };
    }