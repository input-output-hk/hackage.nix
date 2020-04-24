{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "pkggraph"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2009 Robin Green";
      maintainer = "Robin Green <greenrd@greenrd.org>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Package dependency graph for installed packages";
      description = "Presents the package dependencies of all installed packages maintained by a given\nset of maintainers as a \"dot\" graph";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pkggraph" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }