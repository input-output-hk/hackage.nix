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
      specVersion = "1.6";
      identifier = { name = "hsc3-process"; version = "0.5.1"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) Stefan Kersten 2008-2010";
      maintainer = "Stefan Kersten";
      author = "Stefan Kersten";
      homepage = "http://space.k-hornz.de/software/hsc3-process";
      url = "";
      synopsis = "Create and control scsynth processes";
      description = "Create and control scsynth processes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-sc3" or (errorHandler.buildDepError "bindings-sc3"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          ];
        buildable = true;
        };
      };
    }