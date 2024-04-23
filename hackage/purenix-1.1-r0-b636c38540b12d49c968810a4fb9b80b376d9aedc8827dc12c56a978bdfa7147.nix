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
      identifier = { name = "purenix"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "2021 Dennis Gosnell, Jonas Carpay";
      maintainer = "Dennis Gosnell <cdep.illabout@gmail.com>";
      author = "Dennis Gosnell, Jonas Carpay";
      homepage = "https://github.com/purenix-org/purenix";
      url = "";
      synopsis = "Nix backend for PureScript.  Transpile PureScript code to Nix.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
          (hsPkgs."purescript" or (errorHandler.buildDepError "purescript"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "purenix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."purenix" or (errorHandler.buildDepError "purenix"))
          ];
          buildable = true;
        };
      };
    };
  }