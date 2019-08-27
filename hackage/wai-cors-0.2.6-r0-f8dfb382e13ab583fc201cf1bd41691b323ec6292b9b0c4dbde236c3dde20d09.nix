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
    flags = { transformers-3 = false; wai-1 = false; wai-2 = false; };
    package = {
      specVersion = "1.14.0";
      identifier = { name = "wai-cors"; version = "0.2.6"; };
      license = "MIT";
      copyright = "(c) 2015-2017 Lars Kuhtz <lakuhtz@gmail.com>,\n(c) 2014 AlephCloud Systems, Inc.";
      maintainer = "Lars Kuhtz <lakuhtz@gmail.com>";
      author = "Lars Kuhtz <lakuhtz@gmail.com>";
      homepage = "https://github.com/larskuhtz/wai-cors";
      url = "";
      synopsis = "CORS for WAI";
      description = "This package provides an implemenation of\nCross-Origin resource sharing (CORS) for\n<http://hackage.haskell.org/package/wai Wai>\nthat aims to be compliant with <http://www.w3.org/TR/cors>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          ] ++ (pkgs.lib).optionals (flags.wai-1 && !flags.wai-2) [
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ]) ++ (pkgs.lib).optional (flags.wai-2) (hsPkgs."wai" or (buildDepError "wai"))) ++ (pkgs.lib).optional (!flags.wai-1 && !flags.wai-2) (hsPkgs."wai" or (buildDepError "wai"))) ++ (if flags.transformers-3
          then [
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            ]
          else [
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."wai" or (buildDepError "wai"))
            ]);
        };
      tests = {
        "phantomjs" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wai-cors" or (buildDepError "wai-cors"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."filepath" or (buildDepError "filepath"))) ++ (pkgs.lib).optionals (!(flags.wai-1 || flags.wai-2 || compiler.isGhc && (compiler.version).lt "7.10")) [
            (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            ];
          };
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."wai-cors" or (buildDepError "wai-cors"))
            ] ++ (pkgs.lib).optionals (!(flags.wai-1 || flags.wai-2 || compiler.isGhc && (compiler.version).lt "7.10")) [
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            ];
          };
        };
      };
    }