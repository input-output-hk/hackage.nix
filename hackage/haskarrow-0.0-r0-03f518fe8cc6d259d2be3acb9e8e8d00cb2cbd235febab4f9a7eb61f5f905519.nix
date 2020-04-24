{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "haskarrow"; version = "0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Timothy Hobbs <timothyhobbs@seznam.cz>";
      author = "Timothy Hobbs";
      homepage = "";
      url = "";
      synopsis = "A dialect of haskell with order of execution based on dependency resolution";
      description = "This haskell preprocessor will allow you to write \"haskarrow\" code.  Haskarrow is a semi-impertive language.  In a normal imperitive language evaluation happens top to bottom.  In haskarrow, each command is given a set of dependencies.  Commands are then excecuted in order of dependency resolution, those commands that have the fewest dependencies comming before those with the most.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskarrowPrecompiler" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."her-lexer" or ((hsPkgs.pkgs-errors).buildDepError "her-lexer"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."cpphs" or ((hsPkgs.pkgs-errors).buildDepError "cpphs"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }