{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."Takusen" or ((hsPkgs.pkgs-errors).buildDepError "Takusen"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }