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
      specVersion = "1.10";
      identifier = { name = "halvm-web"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016, Adam Wick";
      maintainer = "awick@galois.com";
      author = "Adam Wick";
      homepage = "http://halvm.org";
      url = "";
      synopsis = "A simple, static HaLVM web server";
      description = "A simple, static HaLVM web server";
      buildType = "Simple";
    };
    components = {
      exes = {
        "halvm-web" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HALVMCore" or (errorHandler.buildDepError "HALVMCore"))
            (hsPkgs."hans" or (errorHandler.buildDepError "hans"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."simple-tar" or (errorHandler.buildDepError "simple-tar"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."XenDevice" or (errorHandler.buildDepError "XenDevice"))
          ];
          buildable = true;
        };
      };
    };
  }