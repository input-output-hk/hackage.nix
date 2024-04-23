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
    flags = { nano-md5 = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "feed2lj"; version = "0.0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "(unsupported)";
      description = "(unsupported)";
      buildType = "Simple";
    };
    components = {
      exes = {
        "feed2lj" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          ] ++ (if flags.nano-md5
            then [
              (hsPkgs."nano-md5" or (errorHandler.buildDepError "nano-md5"))
            ]
            else [
              (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            ]);
          buildable = true;
        };
      };
    };
  }