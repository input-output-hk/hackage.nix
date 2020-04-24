{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "prolog-graph-lib"; version = "0.2.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "none";
      author = "Matthias Bartsch";
      homepage = "https://github.com/Erdwolf/prolog";
      url = "";
      synopsis = "Generating images of resolution trees for Prolog queries.";
      description = "This is the library part (See <http://hackage.haskell.org/package/prolog-graph> for the command line tool).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."prolog" or ((hsPkgs.pkgs-errors).buildDepError "prolog"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
          ];
        buildable = true;
        };
      };
    }