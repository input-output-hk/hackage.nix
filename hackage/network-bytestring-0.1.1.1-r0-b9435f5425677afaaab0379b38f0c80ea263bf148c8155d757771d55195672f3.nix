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
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "network-bytestring"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johan.tibell@gmail.com";
      author = "Johan Tibell";
      homepage = "";
      url = "";
      synopsis = "Fast and memory efficient low-level networking";
      description = "Faster and more memory efficient low-level socket\nfunctions using 'Data.ByteString's instead of\n'String's.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ] ++ (if flags.split-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }