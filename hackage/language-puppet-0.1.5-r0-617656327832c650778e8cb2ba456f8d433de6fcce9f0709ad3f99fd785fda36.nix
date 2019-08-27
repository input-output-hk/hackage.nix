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
      identifier = { name = "language-puppet"; version = "0.1.5"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "http://lpuppet.banquise.net";
      url = "";
      synopsis = "Tools to parse and evaluate the Puppet DSL.";
      description = "This is a set of libraries designed to work with the Puppet DSL. It can be used to parse .pp files, compile and interpret them, evaluate the templates. It is still very experimental but is already pretty useful when working with the manifests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."Glob" or (buildDepError "Glob"))
          (hsPkgs."regexpr" or (buildDepError "regexpr"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          ];
        };
      tests = {
        "test-lexer" = {
          depends = [
            (hsPkgs."language-puppet" or (buildDepError "language-puppet"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        "test-expr" = {
          depends = [
            (hsPkgs."language-puppet" or (buildDepError "language-puppet"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ];
          };
        "test-interpreter" = {
          depends = [
            (hsPkgs."language-puppet" or (buildDepError "language-puppet"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ];
          };
        };
      benchmarks = {
        "bench-lexer" = {
          depends = [
            (hsPkgs."language-puppet" or (buildDepError "language-puppet"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }