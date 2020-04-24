{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "hkgr"; version = "0.0"; };
      license = "GPL-3.0-only";
      copyright = "2019 Jens Petersen";
      maintainer = "juhpetersen@gmail.com";
      author = "Jens Petersen";
      homepage = "https://github.com/juhp/hkgr";
      url = "";
      synopsis = "Simple Hackage release workflow for package maintainers";
      description = "Hkgr (pronouced \"Hackager\") is a tool to help Hackage maintainers\nmake new releases of their packages, with commands for git tagging,\npristine sdist, and uploading to Hackage.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hkgr" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."simple-cmd" or ((hsPkgs.pkgs-errors).buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or ((hsPkgs.pkgs-errors).buildDepError "simple-cmd-args"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
          buildable = true;
          };
        };
      };
    }