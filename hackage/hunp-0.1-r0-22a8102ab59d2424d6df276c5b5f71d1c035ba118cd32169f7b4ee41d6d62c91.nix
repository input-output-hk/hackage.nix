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
      identifier = { name = "hunp"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "deniz.a.m.dogan@gmail.com";
      author = "Deniz Dogan";
      homepage = "http://github.com/skorpan/hunp/tree/master";
      url = "";
      synopsis = "Unpacker tool with DWIM";
      description = "hunp is an unpacker tool which does what you mean.  By matching on regular expressions, it automagically calls the right unpacking program for you, e.g. \"unrar\" for files ending in \".rar\", etc.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hunp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }