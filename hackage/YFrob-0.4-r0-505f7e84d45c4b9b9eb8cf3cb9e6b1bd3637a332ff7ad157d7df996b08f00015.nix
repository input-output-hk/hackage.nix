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
      specVersion = "1.2";
      identifier = { name = "YFrob"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2002-2009 Hanrik Nilsson and Yale University";
      maintainer = "Henrik Nilsson (nhn@cs.nott.ac.uk)";
      author = "Henrik Nilsson";
      homepage = "http://www.haskell.org/yampa/";
      url = "";
      synopsis = "Yampa-based library for programming robots";
      description = "Yampa-based, domain-specific language embedded in Haskell for programming\nrobots. At present, only simulated robots. However, the infrastructure is\nseparated into generic and robot-specific parts, and set up so as to make\nit possible to write robot code that depends only on specific features, as\nopposed to specific platforms or versions of those platforms. Thus, it is\nin principle possible to write quite generic robot code. (Once upon a time,\nthe Pioneer platform, a real robot, was supported.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."HGL" or (buildDepError "HGL"))
          (hsPkgs."Yampa" or (buildDepError "Yampa"))
          ];
        };
      };
    }