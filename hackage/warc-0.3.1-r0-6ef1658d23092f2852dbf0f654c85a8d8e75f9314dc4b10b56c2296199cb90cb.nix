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
      identifier = { name = "warc"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Ben Gamari";
      maintainer = "ben@smart-cactus.org";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/warc";
      url = "";
      synopsis = "A parser for the Web Archive (WARC) format";
      description = "A streaming parser for the Web Archive (WARC) format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."pipes-attoparsec" or (buildDepError "pipes-attoparsec"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          ];
        };
      exes = {
        "warc-export" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."warc" or (buildDepError "warc"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."pipes-zlib" or (buildDepError "pipes-zlib"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."pipes-attoparsec" or (buildDepError "pipes-attoparsec"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }