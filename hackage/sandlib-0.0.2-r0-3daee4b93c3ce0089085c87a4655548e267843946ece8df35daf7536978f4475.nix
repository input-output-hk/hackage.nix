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
      identifier = { name = "sandlib"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2012 (c) Mahmut Bulut";
      maintainer = "Mahmut Bulut <mahmutbulut0@gmail.com>";
      author = "Mahmut Bulut <mahmutbulut0@gmail.com>";
      homepage = "http://github.com/regularlambda/sandlib";
      url = "http://hackage.haskell.org/package/sandlib";
      synopsis = "SAND data serialization and manipulation library";
      description = "SAND is a Multi-Agent Systems data serialization and manipulation method.\nIt is used by monitoring & surveillance systems agent wiring to monitor-server\nand representation of agent data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }