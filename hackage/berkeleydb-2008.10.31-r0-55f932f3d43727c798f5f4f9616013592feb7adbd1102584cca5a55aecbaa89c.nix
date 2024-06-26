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
      specVersion = "1.0";
      identifier = { name = "berkeleydb"; version = "2008.10.31"; };
      license = "BSD-3-Clause";
      copyright = "2008 David Himmelstrup <lemmih@gmail.com>";
      maintainer = "David Himmelstrup <lemmih@gmail.com>";
      author = "David Himmelstrup <lemmih@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Pretty BerkeleyDB v4 binding.";
      description = "This library attempts to provide a memory efficient alternative to\nData.Map. The BerkeleyDB system is bound and exposed through an\ninterface that mimics Data.Map as much as possible.\n\nFeatures include: pure interface with fairly efficient sharing\nand a very small memory footprint.\n\nTested with libdb4.6";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ];
        libs = [ (pkgs."db" or (errorHandler.sysDepError "db")) ];
        buildable = true;
      };
    };
  }