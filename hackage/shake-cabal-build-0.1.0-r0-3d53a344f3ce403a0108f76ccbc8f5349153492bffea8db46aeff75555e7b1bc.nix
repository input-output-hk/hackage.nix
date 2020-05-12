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
      identifier = { name = "shake-cabal-build"; version = "0.1.0"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2013-2014 Samplecount S.L.";
      maintainer = "stefan@samplecount.com";
      author = "Stefan Kersten";
      homepage = "https://github.com/samplecount/shake-cabal-build";
      url = "";
      synopsis = "Utility for building Shake build systems using Cabal sandboxes";
      description = "This utility allows to build <http://hackage.haskell.org/package/shake Shake> build systems using <http://hackage.haskell.org/package/Cabal Cabal> sandboxes. It automatically installs and updates a build system's dependencies, either from Hackage or from a local source directory. See the <https://github.com/samplecount/shake-cabal-build homepage> for more information.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "shake-cabal-build" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }