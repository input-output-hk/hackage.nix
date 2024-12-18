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
      identifier = { name = "zydiskell"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2020 nerded";
      maintainer = "nerded.nerded@gmail.com";
      author = "nerded";
      homepage = "https://github.com/nerded1337/zydiskell#readme";
      url = "";
      synopsis = "Haskell language binding for the Zydis library, a x86/x86-64 disassembler.";
      description = "Please see the README on GitHub at <https://github.com/nerded1337/zydiskell#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fixed-vector" or (errorHandler.buildDepError "fixed-vector"))
          (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
        ];
        buildable = true;
      };
      tests = {
        "zydiskell-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."fixed-vector" or (errorHandler.buildDepError "fixed-vector"))
            (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
            (hsPkgs."zydiskell" or (errorHandler.buildDepError "zydiskell"))
          ];
          buildable = true;
        };
      };
    };
  }