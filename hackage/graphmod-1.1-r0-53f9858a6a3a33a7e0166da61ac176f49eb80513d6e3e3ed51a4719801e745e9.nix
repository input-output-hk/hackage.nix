{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "graphmod"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "";
      url = "";
      synopsis = "Present the module dependecies of a program as a \"dot\" graph.";
      description = "This package contains a program that can compute \"dot\" grpahs\nfrom the dependecies between a number of Haskell modules.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "graphmod" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."dotgen" or ((hsPkgs.pkgs-errors).buildDepError "dotgen"))
            ];
          buildable = true;
          };
        };
      };
    }