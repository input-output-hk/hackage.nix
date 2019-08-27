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
    flags = { example = false; test-client = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "react-flux"; version = "1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Lenz <wuzzeb@gmail.com>";
      author = "John Lenz <wuzzeb@gmail.com>";
      homepage = "https://bitbucket.org/wuzzeb/react-flux";
      url = "";
      synopsis = "A binding to React based on the Flux application architecture for GHCJS";
      description = "See the README below.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ] ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"));
        };
      exes = {
        "todo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."react-flux" or (buildDepError "react-flux"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          };
        "todo-node" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."react-flux" or (buildDepError "react-flux"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "purecss-side-menu" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."react-flux" or (buildDepError "react-flux"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ] ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"));
          };
        "test-client-13" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."react-flux" or (buildDepError "react-flux"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ] ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"));
          };
        "test-client-14" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."react-flux" or (buildDepError "react-flux"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            ] ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"));
          };
        "route-example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."react-flux" or (buildDepError "react-flux"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."web-routes" or (buildDepError "web-routes"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ] ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"));
          };
        };
      };
    }