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
      identifier = { name = "prolog-graph-lib"; version = "0.2.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Marcel Fourné (haskell@marcelfourne.de)";
      author = "Matthias Bartsch";
      homepage = "";
      url = "";
      synopsis = "Generating images of resolution trees for Prolog queries.";
      description = "This is the library part (See <http://hackage.haskell.org/package/prolog-graph> for the command line tool).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."prolog" or (errorHandler.buildDepError "prolog"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          ];
        buildable = true;
        };
      };
    }