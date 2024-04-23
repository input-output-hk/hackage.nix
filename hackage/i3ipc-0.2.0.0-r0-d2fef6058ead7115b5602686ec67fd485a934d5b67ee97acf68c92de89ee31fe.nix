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
      identifier = { name = "i3ipc"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Evan Cameron";
      maintainer = "cameron.evan@gmail.com";
      author = "Evan Cameron";
      homepage = "https://github.com/leshow/i3ipc#readme";
      url = "";
      synopsis = "A type-safe wrapper around i3's IPC";
      description = "Library for controlling i3 through it's IPC. i3 communicates using a JSON interface over a unix socket.\nFor JSON parsing I'm using Aeson. I've written out all the records and types to allow anyone to\neasily interact with i3 from a Haskell application.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
        ];
        buildable = true;
      };
      tests = {
        "i3ipc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."i3ipc" or (errorHandler.buildDepError "i3ipc"))
          ];
          buildable = true;
        };
      };
    };
  }