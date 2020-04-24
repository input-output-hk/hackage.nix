{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "orchid-demo"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sfvisser@cs.uu.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Haskell Wiki Demo";
      description = "Haskell Wiki Demo";
      buildType = "Simple";
      };
    components = {
      exes = {
        "orchid-demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."salvia" or ((hsPkgs.pkgs-errors).buildDepError "salvia"))
            (hsPkgs."orchid" or ((hsPkgs.pkgs-errors).buildDepError "orchid"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."Pipe" or ((hsPkgs.pkgs-errors).buildDepError "Pipe"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      };
    }