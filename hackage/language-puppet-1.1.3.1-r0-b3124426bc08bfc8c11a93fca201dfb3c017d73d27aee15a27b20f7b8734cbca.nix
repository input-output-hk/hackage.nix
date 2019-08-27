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
      specVersion = "1.8";
      identifier = { name = "language-puppet"; version = "1.1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "http://lpuppet.banquise.net/";
      url = "";
      synopsis = "Tools to parse and evaluate the Puppet DSL.";
      description = "This is a set of tools that is supposed to fill all your Puppet needs : syntax checks, catalog compilation, PuppetDB queries, simulationg of complex interactions between nodes, Puppet master replacement, and more !";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."filecache" or (buildDepError "filecache"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hruby" or (buildDepError "hruby"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."hslua" or (buildDepError "hslua"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
          (hsPkgs."luautils" or (buildDepError "luautils"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."operational" or (buildDepError "operational"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."parsers" or (buildDepError "parsers"))
          (hsPkgs."pcre-utils" or (buildDepError "pcre-utils"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."regex-pcre-builtin" or (buildDepError "regex-pcre-builtin"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-client" or (buildDepError "servant-client"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."strict-base-types" or (buildDepError "strict-base-types"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ];
        };
      exes = {
        "puppetresources" = {
          depends = [
            (hsPkgs."language-puppet" or (buildDepError "language-puppet"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."strict-base-types" or (buildDepError "strict-base-types"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."regex-pcre-builtin" or (buildDepError "regex-pcre-builtin"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."parallel-io" or (buildDepError "parallel-io"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            ];
          };
        "pdbquery" = {
          depends = [
            (hsPkgs."language-puppet" or (buildDepError "language-puppet"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."strict-base-types" or (buildDepError "strict-base-types"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            ];
          };
        };
      tests = {
        "test-evals" = {
          depends = [
            (hsPkgs."language-puppet" or (buildDepError "language-puppet"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."parsers" or (buildDepError "parsers"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          };
        "test-lexer" = {
          depends = [
            (hsPkgs."language-puppet" or (buildDepError "language-puppet"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          };
        "test-expr" = {
          depends = [
            (hsPkgs."language-puppet" or (buildDepError "language-puppet"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."parsers" or (buildDepError "parsers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."strict-base-types" or (buildDepError "strict-base-types"))
            ];
          };
        "test-hiera" = {
          depends = [
            (hsPkgs."language-puppet" or (buildDepError "language-puppet"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."strict-base-types" or (buildDepError "strict-base-types"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "test-puppetdb" = {
          depends = [
            (hsPkgs."language-puppet" or (buildDepError "language-puppet"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."strict-base-types" or (buildDepError "strict-base-types"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."either" or (buildDepError "either"))
            ];
          };
        "erbparser" = {
          depends = [
            (hsPkgs."language-puppet" or (buildDepError "language-puppet"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."strict-base-types" or (buildDepError "strict-base-types"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }