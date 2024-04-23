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
      identifier = { name = "system-canonicalpath"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "(c) Boris Buliga, 2014";
      maintainer = "Boris Buliga <d12frosted@icloud.com>";
      author = "Boris Buliga <d12frosted@icloud.com>";
      homepage = "https://github.com/d12frosted/CanonicalPath";
      url = "";
      synopsis = "Abstract data type for canonical paths with pretty operations";
      description = "This library provides abstract data type named 'CanonicalPath' and some useful functions for working with it. See every module's description to find out more.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."basic-prelude" or (errorHandler.buildDepError "basic-prelude"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }