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
      specVersion = "2.4";
      identifier = { name = "linux-capabilities"; version = "0.1.1.0"; };
      license = "Apache-2.0";
      copyright = "2021 Red Hat";
      maintainer = "Tristan de Cacqueray <tdecacqu@redhat.com>";
      author = "Tristan de Cacqueray";
      homepage = "https://github.com/softwarefactory-project/linux-capabilities-haskell#readme";
      url = "";
      synopsis = "Linux capabilities Haskell data type";
      description = "linux-capabilities provides a data type and documentation for the Linux capabilities(7).\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }