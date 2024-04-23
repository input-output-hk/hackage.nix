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
      specVersion = "1.4";
      identifier = { name = "BerkeleyDBXML"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Stephen Blackheath";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "";
      url = "";
      synopsis = "Berkeley DB and Berkeley DB/XML binding for Haskell";
      description = "Berkeley DB and Berkeley DB/XML binding for Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [
          (pkgs."db" or (errorHandler.sysDepError "db"))
          (pkgs."dbxml" or (errorHandler.sysDepError "dbxml"))
          (pkgs."db_cxx" or (errorHandler.sysDepError "db_cxx"))
          (pkgs."xqilla" or (errorHandler.sysDepError "xqilla"))
          (pkgs."xerces-c" or (errorHandler.sysDepError "xerces-c"))
          (pkgs."xml2" or (errorHandler.sysDepError "xml2"))
        ];
        buildable = true;
      };
    };
  }