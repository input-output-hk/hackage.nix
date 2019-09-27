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
      identifier = { name = "lambdatwit"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "aaron.ash@gmail.com";
      author = "Aaron Ash";
      homepage = "http://github.com/ashyisme/lambdatwit";
      url = "";
      synopsis = "Lambdabot running as a twitter bot. Similar to the @fsibot f# bot.";
      description = "A twitter bot using mueval to evaluate haskell tweets.\nFurther info: <https://github.com/AshyIsMe/lambdatwit/blob/master/README.md>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lambdatwit" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."authenticate-oauth" or (buildDepError "authenticate-oauth"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."hint" or (buildDepError "hint"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mueval" or (buildDepError "mueval"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."twitter-conduit" or (buildDepError "twitter-conduit"))
            (hsPkgs."twitter-types" or (buildDepError "twitter-types"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        "oauth_pin" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."authenticate-oauth" or (buildDepError "authenticate-oauth"))
            (hsPkgs."twitter-conduit" or (buildDepError "twitter-conduit"))
            ];
          buildable = true;
          };
        };
      };
    }