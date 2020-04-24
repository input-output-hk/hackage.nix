{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { repl = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hfoil"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Greg Horn 2012, 2015";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "Hess-Smith panel code for inviscid 2-d airfoil analysis";
      description = "Library and command line REPL with plotting to do simple inviscid hess-smith panel code.\n\nFeatures include:\n\n* Cheap and shameless xfoil ripoff for relp/plotting interface\n\n* Naca 4-series support with Gauss-Newton paneling\n\n* Broken UIUC database integration (type \\\"uiuc [foilname]\\\")\n\n* Haskeline interface with tab-completion (oooh)\n\n* Single and multi-element airfoils\n\n* Inviscid, incompressible, 2-dimensional flow only\n\n\nTo get started, do cabal install or whatever, then run the \\\"hfoil\\\" binary.\n\nThings to try: \\\"naca 2412\\\", \\\"alfa 4\\\", (hit enter before entering another airfoil), \\\"load [filename]\\\", \\\"uiuc e330\\\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."not-gloss" or ((hsPkgs.pkgs-errors).buildDepError "not-gloss"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        buildable = true;
        };
      exes = {
        "hfoil" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hfoil" or ((hsPkgs.pkgs-errors).buildDepError "hfoil"))
            ];
          buildable = if flags.repl then true else false;
          };
        };
      };
    }