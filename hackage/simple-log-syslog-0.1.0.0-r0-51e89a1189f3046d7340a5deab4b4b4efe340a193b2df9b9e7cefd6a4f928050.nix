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
      specVersion = "1.8";
      identifier = { name = "simple-log-syslog"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voidex@live.com";
      author = "Alexandr `voidex` Ruchkin";
      homepage = "http://github.com/mvoidex/simple-log-syslog";
      url = "";
      synopsis = "Syslog backend for simple-log";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."simple-log" or (errorHandler.buildDepError "simple-log"))
          (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
        ];
        buildable = true;
      };
    };
  }