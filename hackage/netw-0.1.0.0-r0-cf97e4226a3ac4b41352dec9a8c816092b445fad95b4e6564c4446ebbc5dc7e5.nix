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
    flags = { debug = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "netw"; version = "0.1.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "";
      maintainer = "Vu Hoang Hung <hoanghung17jan@gmail.com>";
      author = "Vu Hoang Hung";
      homepage = "https://github.com/k355l3r-5yndr0m3/netw";
      url = "";
      synopsis = "Binding to C socket API operating on bytearrays.";
      description = "Provide access to low-level socket api. Work with both bytearrays and pointers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."primitive-unaligned" or (errorHandler.buildDepError "primitive-unaligned"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
      tests = {
        "server-client-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."netw" or (errorHandler.buildDepError "netw"))
          ];
          buildable = true;
        };
        "msgs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."netw" or (errorHandler.buildDepError "netw"))
          ];
          buildable = true;
        };
        "unix-scm-rights-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."netw" or (errorHandler.buildDepError "netw"))
          ];
          buildable = true;
        };
        "send-and-recv-msgs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."netw" or (errorHandler.buildDepError "netw"))
          ];
          buildable = true;
        };
        "codegen-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."netw" or (errorHandler.buildDepError "netw"))
          ];
          buildable = true;
        };
      };
    };
  }