{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mmsyn4"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "http://hackage.haskell.org/package/mmsyn4";
      url = "";
      synopsis = "The \"glue\" between electronic tables and GraphViz";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mmsyn4" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."mmsyn2" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn2"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."mmsyn3" or ((hsPkgs.pkgs-errors).buildDepError "mmsyn3"))
            ];
          buildable = true;
          };
        };
      };
    }