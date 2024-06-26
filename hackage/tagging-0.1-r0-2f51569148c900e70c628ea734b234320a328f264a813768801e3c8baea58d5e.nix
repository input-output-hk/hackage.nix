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
      identifier = { name = "tagging"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "overture2112@gmail.com";
      author = "Joseph Re";
      homepage = "git://github.com/jre2/HaskellTagging.git";
      url = "";
      synopsis = "Library for tagging data";
      description = "A library for tagging data according to regex rules and manipulating the\ntagged structures.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
        ];
        buildable = true;
      };
    };
  }