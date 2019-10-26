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
    flags = { network-uri = true; omit-serialize = false; };
    package = {
      specVersion = "1.4";
      identifier = { name = "sr-extra"; version = "1.64"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox";
      homepage = "https://github.com/seereason/sr-extra";
      url = "";
      synopsis = "Module limbo";
      description = "A hodge-podge of functions, modules, and instances.  These\ngenerally end up here because\n1. they are needed in two unrelated packages,\n2. they belong in some upstream module,\n3. they can't be moved to an upstream module because\nthey would add dependencies, or\n4. they are deprecated but still in use";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bzlib" or (buildDepError "bzlib"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."Diff" or (buildDepError "Diff"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."generic-data" or (buildDepError "generic-data"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."ListLike" or (buildDepError "ListLike"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."safecopy" or (buildDepError "safecopy"))
          (hsPkgs."show-combinators" or (buildDepError "show-combinators"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."th-lift" or (buildDepError "th-lift"))
          (hsPkgs."th-lift-instances" or (buildDepError "th-lift-instances"))
          (hsPkgs."th-orphans" or (buildDepError "th-orphans"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."Unixutils" or (buildDepError "Unixutils"))
          (hsPkgs."userid" or (buildDepError "userid"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."uuid-orphans" or (buildDepError "uuid-orphans"))
          (hsPkgs."uuid-types" or (buildDepError "uuid-types"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
          (hsPkgs."show-please" or (buildDepError "show-please"))
          (hsPkgs."filemanip" or (buildDepError "filemanip"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."process-extras" or (buildDepError "process-extras"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ]) ++ (if flags.network-uri
          then [ (hsPkgs."network-uri" or (buildDepError "network-uri")) ]
          else [ (hsPkgs."network" or (buildDepError "network")) ])) ++ [
          (hsPkgs."cereal" or (buildDepError "cereal"))
          ];
        buildable = true;
        };
      };
    }