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
      identifier = { name = "deepseq-magic"; version = "1.0.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "ezyang@cs.stanford.edu";
      author = "Edward Z. Yang";
      homepage = "https://github.com/ezyang/deepseq-magic";
      url = "";
      synopsis = "Deep evaluation of data structures without NFData";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }