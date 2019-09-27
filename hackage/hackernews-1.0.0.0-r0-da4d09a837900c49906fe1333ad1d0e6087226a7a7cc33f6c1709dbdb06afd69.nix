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
      identifier = { name = "hackernews"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "";
      url = "";
      synopsis = "API for Hacker News";
      description = "API for news.ycombinator.com";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."servant" or (buildDepError "servant"))
          ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ]
          else [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ]);
        buildable = true;
        };
      exes = {
        "example" = {
          depends = if compiler.isGhcjs && true
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."hackernews" or (buildDepError "hackernews"))
              (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."hackernews" or (buildDepError "hackernews"))
              (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
              (hsPkgs."http-client" or (buildDepError "http-client"))
              ];
          buildable = true;
          };
        "ghcjs-tests" = {
          depends = (pkgs.lib).optionals (compiler.isGhcjs && true) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hackernews" or (buildDepError "hackernews"))
            (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."basic-sop" or (buildDepError "basic-sop"))
            (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = if compiler.isGhcjs && true then true else false;
          };
        };
      tests = {
        "ghc-tests" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."basic-sop" or (buildDepError "basic-sop"))
            (hsPkgs."generics-sop" or (buildDepError "generics-sop"))
            (hsPkgs."hackernews" or (buildDepError "hackernews"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }