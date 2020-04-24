{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "cspmchecker"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Thomas Gibson-Robinson";
      maintainer = "Thomas Gibson-Robinson <thomas.gibsonrobinson@gmail.com>";
      author = "Thomas Gibson-Robinson <thomas.gibsonrobinson@gmail.com>";
      homepage = "https://github.com/tomgr/libcspm";
      url = "";
      synopsis = "A command line type checker for CSPM files.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cspmchecker" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."libcspm" or ((hsPkgs.pkgs-errors).buildDepError "libcspm"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        "cspmcheckeri" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."libcspm" or ((hsPkgs.pkgs-errors).buildDepError "libcspm"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            ];
          buildable = true;
          };
        };
      };
    }