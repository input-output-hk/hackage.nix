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
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "tempus"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2010, Matthias Reisner";
      maintainer = "Matthias Reisner <matthias.reisner@googlemail.com>";
      author = "Matthias Reisner";
      homepage = "";
      url = "";
      synopsis = "Interpreter for the FRP language Tempus";
      description = "This package provides an interactive console application for loading of modules,\ndefinition of types and values, as well as type checking and evaluation of\nexpressions in the functional reactive language Tempus.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tempus" = {
          depends = [
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."executable-path" or (buildDepError "executable-path"))
            ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
          build-tools = [
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (buildToolDepError "happy")))
            ];
          };
        };
      };
    }