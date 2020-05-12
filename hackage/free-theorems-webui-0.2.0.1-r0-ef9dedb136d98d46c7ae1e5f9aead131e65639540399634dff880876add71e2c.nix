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
    flags = { our_server = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "free-theorems-webui"; version = "0.2.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "bartsch@cs.uni-bonn.de";
      author = "Matthias Bartsch";
      homepage = "";
      url = "";
      synopsis = "CGI-based web interface for the free-theorems package.";
      description = "This package provides access to the functionality of <http://hackage.haskell.org/package/free-theorems>\nthrough a web interface.\n\nAn online version can be seen at <http://www-ps.iai.uni-bonn.de/ft/>,\nwhere you can also find a more detailed description of the functionality.\n\nThere is also a shell based interface: <http://hackage.haskell.org/package/ftshell>.\n\nThe CGI binary is called \"free-theorems-webui.cgi\".\n\nTo start it locally for offline usage, just call \"free-theorems-webui\" after installation. (This needs python)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "free-theorems-webui.cgi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."free-theorems" or (errorHandler.buildDepError "free-theorems"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."dataenc" or (errorHandler.buildDepError "dataenc"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            ];
          buildable = true;
          };
        "free-theorems-webui" = { buildable = true; };
        };
      };
    }