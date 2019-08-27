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
      identifier = { name = "paprika"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Takamasa Mitsuji";
      maintainer = "tkms@mitsuji.org";
      author = "Takamasa Mitsuji";
      homepage = "https://github.com/mitsuji/paprika#readme";
      url = "";
      synopsis = "The Haskell library and examples for the kids programming robot paprika";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."huckleberry" or (buildDepError "huckleberry"))
          ];
        };
      exes = {
        "paprika-console-ctrl-exe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."paprika" or (buildDepError "paprika"))
            ];
          };
        "paprika-wai-ctrl-exe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."paprika" or (buildDepError "paprika"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."network-transport-inmemory" or (buildDepError "network-transport-inmemory"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-app-static" or (buildDepError "wai-app-static"))
            (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."word8" or (buildDepError "word8"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            ];
          };
        "paprika-wai-cutter-exe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."paprika" or (buildDepError "paprika"))
            (hsPkgs."distributed-process" or (buildDepError "distributed-process"))
            (hsPkgs."network-transport-inmemory" or (buildDepError "network-transport-inmemory"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-app-static" or (buildDepError "wai-app-static"))
            (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."word8" or (buildDepError "word8"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            ];
          };
        };
      };
    }