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
      specVersion = "1.12";
      identifier = { name = "c14n"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) Michael B. Gale";
      maintainer = "m.gale@warwick.ac.uk";
      author = "Michael B. Gale";
      homepage = "https://github.com/mbg/c14n#readme";
      url = "";
      synopsis = "Bindings to the c14n implementation in libxml.";
      description = "Please see the README on GitHub at <https://github.com/mbg/c14n#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = [ (pkgs."xml2" or (errorHandler.sysDepError "xml2")) ];
        buildable = true;
      };
    };
  }