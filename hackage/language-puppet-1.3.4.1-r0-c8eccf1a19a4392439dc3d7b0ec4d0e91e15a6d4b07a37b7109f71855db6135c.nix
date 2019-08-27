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
      identifier = { name = "language-puppet"; version = "1.3.4.1"; };
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
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."filecache" or (buildDepError "filecache"))
          (hsPkgs."formatting" or (buildDepError "formatting"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."hruby" or (buildDepError "hruby"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."operational" or (buildDepError "operational"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."pcre-utils" or (buildDepError "pcre-utils"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."regex-pcre-builtin" or (buildDepError "regex-pcre-builtin"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."language-puppet" or (buildDepError "language-puppet"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."parallel-io" or (buildDepError "parallel-io"))
            (hsPkgs."regex-pcre-builtin" or (buildDepError "regex-pcre-builtin"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            (hsPkgs."strict-base-types" or (buildDepError "strict-base-types"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "pdbquery" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."language-puppet" or (buildDepError "language-puppet"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            (hsPkgs."strict-base-types" or (buildDepError "strict-base-types"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
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
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          };
        "test-lexer" = {
          depends = [
            (hsPkgs."language-puppet" or (buildDepError "language-puppet"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
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
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."strict-base-types" or (buildDepError "strict-base-types"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-megaparsec" or (buildDepError "hspec-megaparsec"))
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
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
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
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
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
        "spec" = {
          depends = [
            (hsPkgs."language-puppet" or (buildDepError "language-puppet"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."strict-base-types" or (buildDepError "strict-base-types"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      };
    }