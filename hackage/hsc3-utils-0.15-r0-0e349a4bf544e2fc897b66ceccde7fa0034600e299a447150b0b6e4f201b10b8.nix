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
      identifier = { name = "hsc3-utils"; version = "0.15"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2013-2014";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/t/hsc3-utils";
      url = "";
      synopsis = "Haskell SuperCollider Utilities";
      description = "Haskell SuperCollider Utilities";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          (hsPkgs."hsc3-sf" or (errorHandler.buildDepError "hsc3-sf"))
        ];
        buildable = true;
      };
      exes = {
        "hsc3-hash-at" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3-rw" or (errorHandler.buildDepError "hsc3-rw"))
          ];
          buildable = true;
        };
        "hsc3-hash-paren" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3-rw" or (errorHandler.buildDepError "hsc3-rw"))
          ];
          buildable = true;
        };
        "hsc3-id-rewrite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3-rw" or (errorHandler.buildDepError "hsc3-rw"))
          ];
          buildable = true;
        };
        "hsc3-id-clear" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsc3-rw" or (errorHandler.buildDepError "hsc3-rw"))
          ];
          buildable = true;
        };
        "hsc3-scsyndef-to-dot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hsc3-dot" or (errorHandler.buildDepError "hsc3-dot"))
            (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }