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
      identifier = { name = "free-theorems-seq-webui"; version = "1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "ds@iai.uni-bonn.de";
      author = "Daniel Seidel";
      homepage = "";
      url = "";
      synopsis = "Taming Selective Strictness";
      description = "This package provides access to the functionality of\n<http://hackage.haskell.org/package/free-theorems-seq> through a web interface.\n\nAn online version of the interface is running at <http://www-ps.iai.uni-bonn.de/cgi-bin/polyseq.cgi>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "free-theorems-seq-webui.cgi" = {
          depends = [
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."free-theorems-seq" or (errorHandler.buildDepError "free-theorems-seq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          ] ++ (if compiler.isGhc && compiler.version.ge "6.10"
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
        };
      };
    };
  }