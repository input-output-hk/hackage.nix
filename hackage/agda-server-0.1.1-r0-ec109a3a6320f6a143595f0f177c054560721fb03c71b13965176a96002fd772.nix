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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "agda-server"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divipp@gmail.com";
      author = "Péter Diviánszky";
      homepage = "";
      url = "";
      synopsis = "Http server for Agda (prototype)";
      description = "@agda-server@ serves agda files as XML files.\n\nUsage: Run @agda-server@ (see --help for command line options). Then open a browser\nwith @localhost:8001/X.xml@ (or similar).\n\nSupported features: Type checking (whole module), links between modules (but not between library modules), basic support for holes.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "agda-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."HJavaScript" or (errorHandler.buildDepError "HJavaScript"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."Agda" or (errorHandler.buildDepError "Agda"))
          ];
          buildable = true;
        };
      };
    };
  }