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
      identifier = { name = "AppleScript"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Reiner Pope <reiner.pope@gmail.com>";
      author = "Wouter Swierstra <wouter.swierstra@gmail.com>, Reiner Pope <reiner.pope@gmail.com>";
      homepage = "https://github.com/reinerp/haskell-AppleScript";
      url = "";
      synopsis = "Call AppleScript from Haskell, and then call back into Haskell.";
      description = "This package enables you to compile and execute AppleScript code from\nHaskell, and provides support for this AppleScript code to call back\ninto Haskell. To get started, see \"Foreign.AppleScript.Rich\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if system.isOsx
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
            (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."Carbon" or (errorHandler.sysDepError "Carbon"));
        buildable = if system.isOsx then true else false;
      };
    };
  }