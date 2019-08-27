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
      specVersion = "1.10";
      identifier = { name = "transient-universe"; version = "0.3.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto G. Corona";
      homepage = "http://www.fpcomplete.com/user/agocorona";
      url = "";
      synopsis = "Remote execution and map-reduce: distributed computing for Transient";
      description = "See <http://github.com/agocorona/transient>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transient" or (buildDepError "transient"))
          ] ++ (if compiler.isGhcjs && (compiler.version).ge "0.1"
          then [
            (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
            (hsPkgs."ghcjs-prim" or (buildDepError "ghcjs-prim"))
            ]
          else [
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."TCache" or (buildDepError "TCache"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-info" or (buildDepError "network-info"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            (hsPkgs."iproute" or (buildDepError "iproute"))
            ]);
        };
      exes = {
        "monitorService" = {
          depends = if !(compiler.isGhcjs && (compiler.version).ge "0.1")
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."transient" or (buildDepError "transient"))
              (hsPkgs."transient-universe" or (buildDepError "transient-universe"))
              (hsPkgs."transformers" or (buildDepError "transformers"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        };
      };
    }