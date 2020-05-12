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
      identifier = { name = "prolog-graph"; version = "0.1"; };
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
            (hsPkgs."prolog" or (errorHandler.buildDepError "prolog"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
            ];
          buildable = true;
          };
        };
      };
    }