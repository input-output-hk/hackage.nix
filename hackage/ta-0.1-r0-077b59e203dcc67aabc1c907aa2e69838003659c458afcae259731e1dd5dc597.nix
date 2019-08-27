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
      specVersion = "1.2.3";
      identifier = { name = "ta"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Leonel Fonseca, 2010";
      maintainer = "Leonel Fonseca <leonelfl@gmail.com>";
      author = "Leonel Fonseca";
      homepage = "not available";
      url = "";
      synopsis = "Transito Abierto: convenience library when using Takusen and Oracle.";
      description = "The purpose of this library is to add convenience in database\naccesses when using Takusen and Oracle, by generating boilerplate code.\nIt's not a substitute to Takusen.\n\nTransito Abierto is implemented in the library (Database.TA.TAB) and this\nalso provides functionality used by the generated code.\n\nTA will generate the declarations of:\n\n1. The datatype declaration for the result of a query,\n\n2. The DBM action that run the query and accumulates\nthe result,\n\n3.Optionally, a meta-variable whose value is the former two declarations.\n\nThis initial version has the following benefits:\n\n- TA contains code to test if your program will fail before it runs, based\non comparing the original generated code versus a fresh\nversion of generated code,\n\n- The user can code queries with more than eight columns length,\n\n- The code generator process is aware if the column can be null,\nand generate the appropiate code.\n\nSome TA drawbacks at this point are:\n\n- The user only can specify queries, that is, select statements.\n\n- The select specification is awkward.\n\n- The select specification is a list. You can specify one or many\nunder a sole name.\n- You can bind parameters or not (by means of [[]]).\n\n- Functions names and constructors are named in spanish.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."Takusen" or (buildDepError "Takusen"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ];
        };
      };
    }