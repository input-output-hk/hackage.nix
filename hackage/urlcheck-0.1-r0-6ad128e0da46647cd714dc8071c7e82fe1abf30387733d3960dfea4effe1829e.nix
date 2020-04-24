{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "urlcheck"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<dons@cse.unsw.edu.au>";
      author = "Don Stewart";
      homepage = "http://www.cse.unsw.edu.au/~dons/urlcheck.html";
      url = "";
      synopsis = "Parallel link checker";
      description = "A (SMP) parallel link checker.\nChecks the validity of embedded urls in the input files.\nUsage: urlcheck foo.html";
      buildType = "Custom";
      };
    components = {
      exes = {
        "urlcheck" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ];
          buildable = true;
          };
        };
      };
    }