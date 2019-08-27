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
      identifier = { name = "feed-translator"; version = "0.1.0.2"; };
      license = "AGPL-3.0-only";
      copyright = "(c) 2015 Hong Minhee";
      maintainer = "hongminhee@member.fsf.org";
      author = "Hong Minhee";
      homepage = "https://github.com/dahlia/feed-translator";
      url = "";
      synopsis = "Translate syndication feeds";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "feed-translator" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."feed" or (buildDepError "feed"))
            (hsPkgs."iso639" or (buildDepError "iso639"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."naver-translate" or (buildDepError "naver-translate"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."raw-strings-qq" or (buildDepError "raw-strings-qq"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."wreq" or (buildDepError "wreq"))
            (hsPkgs."xml" or (buildDepError "xml"))
            ];
          };
        };
      };
    }