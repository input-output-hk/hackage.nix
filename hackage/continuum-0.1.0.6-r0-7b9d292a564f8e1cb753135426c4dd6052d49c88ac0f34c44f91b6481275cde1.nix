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
    flags = { binaries = false; profiling = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "continuum"; version = "0.1.0.6"; };
      license = "MIT";
      copyright = "";
      maintainer = "alexp@coffeenco.de";
      author = "Alex Petrov";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Continuum Database Client";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."nanomsg-haskell" or (buildDepError "nanomsg-haskell"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      exes = {
        "continuum-server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."timers" or (buildDepError "timers"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."suspend" or (buildDepError "suspend"))
            (hsPkgs."leveldb-haskell-fork" or (buildDepError "leveldb-haskell-fork"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."parallel-io" or (buildDepError "parallel-io"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."nanomsg-haskell" or (buildDepError "nanomsg-haskell"))
            ];
          libs = [ (pkgs."hyperleveldb" or (sysDepError "hyperleveldb")) ];
          };
        };
      };
    }