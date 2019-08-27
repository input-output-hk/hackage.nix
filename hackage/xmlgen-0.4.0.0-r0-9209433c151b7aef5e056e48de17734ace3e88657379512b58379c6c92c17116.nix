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
    flags = { tests = false; benchmarks = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "xmlgen"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stefan Wehr <wehr@factisresearch.com>";
      author = "Stefan Wehr, Stefan Schmidt, Johannes Weiss, David Leuschner";
      homepage = "";
      url = "";
      synopsis = "Fast XML generation library";
      description = "Library for high-performance XML generation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."xml-types" or (buildDepError "xml-types"))
          ];
        };
      exes = {
        "tests" = {
          depends = (pkgs.lib).optionals (flags.tests) [
            (hsPkgs."HTF" or (buildDepError "HTF"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        "benchmarks" = {
          depends = (pkgs.lib).optional (flags.benchmarks) (hsPkgs."criterion" or (buildDepError "criterion"));
          };
        };
      };
    }