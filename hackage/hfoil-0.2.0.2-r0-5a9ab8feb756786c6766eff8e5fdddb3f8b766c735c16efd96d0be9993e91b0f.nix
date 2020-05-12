{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { repl = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hfoil"; version = "0.2.0.2"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."not-gloss" or (errorHandler.buildDepError "not-gloss"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      exes = {
        "hfoil" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hfoil" or (errorHandler.buildDepError "hfoil"))
            ];
          buildable = if flags.repl then true else false;
          };
        };
      };
    }