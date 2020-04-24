{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "prolog-graph"; version = "0.1.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "bartsch@cs.uni-bonn.de";
      author = "Matthias Bartsch";
      homepage = "https://github.com/Erdwolf/prolog";
      url = "";
      synopsis = "A command line tool to visualize query resolution in Prolog.";
      description = "This package installs the command line tool `hsprolog-graph` that\ngenerates images of resolution trees for given Prolog queries.\n\nSee @hsprolog-graph --help@ for more information on usage.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsprolog-graph" = {
          depends = [
            (hsPkgs."prolog" or ((hsPkgs.pkgs-errors).buildDepError "prolog"))
            (hsPkgs."prolog-graph-lib" or ((hsPkgs.pkgs-errors).buildDepError "prolog-graph-lib"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
            ];
          buildable = true;
          };
        };
      };
    }