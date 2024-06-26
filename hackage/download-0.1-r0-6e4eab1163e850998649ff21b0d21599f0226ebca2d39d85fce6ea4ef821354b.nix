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
      specVersion = "1.2";
      identifier = { name = "download"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008, Don Stewart <dons@galois.com>";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/download";
      url = "";
      synopsis = "High-level file download based on URLs";
      description = "High-level File download based on URLs\n\nDownload content as bytestrings, strings or parsed\ntags, via ftp, http or file protocols.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
        ];
        buildable = true;
      };
    };
  }