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
      specVersion = "2.0";
      identifier = { name = "hid-examples"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vitaly Bragilevsky <vit.bragilevsky@gmail.com>";
      author = "Vitaly Bragilevsky";
      homepage = "https://github.com/bravit/hid-examples#readme";
      url = "";
      synopsis = "Examples to accompany the book \"Haskell in Depth\"";
      description = "This package provides source code examples which accompany the book \"Haskell in Depth\" by Vitaly Bragilevsky (Manning Publications 2020). You may want to get this package via @cabal get hid-examples@ and explore its content.";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "ipgen-lib" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."iplookup-lib" or (buildDepError "iplookup-lib"))
            ];
          buildable = true;
          };
        "iplookup-lib" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fingertree" or (buildDepError "fingertree"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          buildable = true;
          };
        };
      exes = {
        "api-stage0" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "api-stage1" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "api-stage2" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "api-stage3" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "describe-proxies" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "describe-type-apps" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "dicegame" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "doors-singletons" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "doors-type-equality" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "du" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            ];
          buildable = true;
          };
        "dynvalues-gadt" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "expr-gadt" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "filecount" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."extra" or (buildDepError "extra"))
            ];
          buildable = true;
          };
        "gcd" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        "genSQL" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "graph-assoc-tf" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        "ioref" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "ipgen" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."ipgen-lib" or (buildDepError "ipgen-lib"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            ];
          buildable = true;
          };
        "iplookup" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."iplookup-lib" or (buildDepError "iplookup-lib"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            ];
          buildable = true;
          };
        "iplookup-simulation" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."iplookup-lib" or (buildDepError "iplookup-lib"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "locator" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "maybe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."safe" or (buildDepError "safe"))
            ];
          buildable = true;
          };
        "nummod-rank-n" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "reader" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        "rpnexpr" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        "showexpr" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hint" or (buildDepError "hint"))
            ];
          buildable = true;
          };
        "shunting-yard" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        "stockquotes" = {
          depends = [
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."Chart-diagrams" or (buildDepError "Chart-diagrams"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."fmt" or (buildDepError "fmt"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          buildable = true;
          };
        "stref" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "suntimes" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."req" or (buildDepError "req"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        "type-families" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "type-lits" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "type-operators" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "vocab1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "vocab2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "vocab3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "weapons" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        "weights-kinds" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "weights-phantom" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "xlist-data-families" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        };
      tests = {
        "iplookup-doctest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          buildable = true;
          };
        "iplookup-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."ipgen-lib" or (buildDepError "ipgen-lib"))
            (hsPkgs."iplookup-lib" or (buildDepError "iplookup-lib"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (buildDepError "tasty-golden"))
            (hsPkgs."tasty-hedgehog" or (buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "iplookup-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."iplookup-lib" or (buildDepError "iplookup-lib"))
            ];
          buildable = true;
          };
        "primcheck" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }