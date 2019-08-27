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
      identifier = { name = "reflex-backend-wai"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dave.laing.80@gmail.com";
      author = "Dave Laing";
      homepage = "";
      url = "";
      synopsis = "Reflex interface to `wai`";
      description = "Reflex interface to `wai`.\n\nA minimal example:\n\n> {-# LANGUAGE OverloadedStrings #-}\n> module Main where\n>\n> import Network.Wai (responseLBS)\n> import Network.HTTP.Types.Status (status200)\n>\n> import Reflex.Backend.Warp (runAppForever)\n>\n> main :: IO ()\n> main =\n>   runAppForever 8080 \$ \\eReq -> do\n>     let eRes = responseLBS status200 [] \"Hi\" <\$ eReq\n>     pure eRes";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."reflex" or (buildDepError "reflex"))
          (hsPkgs."reflex-basic-host" or (buildDepError "reflex-basic-host"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."warp" or (buildDepError "warp"))
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."reflex-backend-wai" or (buildDepError "reflex-backend-wai"))
            ];
          };
        };
      };
    }