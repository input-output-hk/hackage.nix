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
      identifier = { name = "http-client-restricted"; version = "0.0.2"; };
      license = "MIT";
      copyright = "2018 Joey Hess, 2013 Michael Snoyman";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess";
      homepage = "";
      url = "";
      synopsis = "restricting the servers that http-client will use";
      description = "Addition to the http-client and http-client-tls\nlibraries, that restricts the HTTP servers that can be used.\n\nThis is useful when a security policy needs to eg, prevent connections to\nHTTP servers on localhost or a local network, or only allow connections\nto a specific HTTP server.\n\nIt handles restricting redirects as well as the initial HTTP connection,\nand it also guards against DNS poisoning attacks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }