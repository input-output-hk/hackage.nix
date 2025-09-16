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
      identifier = { name = "system-linux-proc"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017 Erik de Castro Lopo";
      maintainer = "erikd@mega-nerd.com";
      author = "Erik de Castro Lopo";
      homepage = "https://github.com/erikd/system-linux-proc";
      url = "";
      synopsis = "A library for accessing the /proc filesystem in Linux";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."system-linux-proc" or (errorHandler.buildDepError "system-linux-proc"))
          ];
          buildable = true;
        };
      };
    };
  }