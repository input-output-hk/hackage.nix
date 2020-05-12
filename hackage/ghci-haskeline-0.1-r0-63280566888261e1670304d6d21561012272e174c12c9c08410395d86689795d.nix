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
      identifier = { name = "ghci-haskeline"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "Judah Jacobson <judah.jacobson@gmail.com>";
      author = "";
      homepage = "http://code.haskell.org/~judah/ghci-haskeline";
      url = "";
      synopsis = "An implementation of ghci using the Haskeline line-input library.";
      description = "This package reimplements ghci using the GHC API and the Haskeline\npackage for line input in command-line programs.\n\nThis is an unofficial package; thus any bugs may be the fault of\nthe maintainer rather than of the GHC team.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghci-haskeline" = {
          depends = [
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            ] ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
          buildable = true;
          };
        };
      };
    }