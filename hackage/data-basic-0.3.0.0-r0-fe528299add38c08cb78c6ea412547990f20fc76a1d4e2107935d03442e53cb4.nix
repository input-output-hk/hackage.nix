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
      identifier = { name = "data-basic"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "nikola@henezi.com, luka.horvat9@gmail.com";
      author = "Nikola Henezi, Luka Horvat";
      homepage = "https://gitlab.com/haskell-hr/basic";
      url = "";
      synopsis = "A database library with a focus on ease of use, type safety and useful error messages";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."simple-effects" or (buildDepError "simple-effects"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."hssqlppp" or (buildDepError "hssqlppp"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."cases" or (buildDepError "cases"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."overload" or (buildDepError "overload"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."string-conv" or (buildDepError "string-conv"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."simple-logging" or (buildDepError "simple-logging"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      tests = {
        "basic-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."data-basic" or (buildDepError "data-basic"))
            (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."string-conv" or (buildDepError "string-conv"))
            ];
          buildable = true;
          };
        };
      };
    }