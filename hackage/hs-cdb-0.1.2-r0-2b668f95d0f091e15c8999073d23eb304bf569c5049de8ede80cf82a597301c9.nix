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
      identifier = { name = "hs-cdb"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Smith";
      author = "Adam Smith";
      homepage = "http://github.com/adamsmasher/hs-cdb";
      url = "";
      synopsis = "A library for reading CDB (Constant Database) files.";
      description = "A library for reading CDB (Constant Database) files.\n\nCDB files are immutable key-value stores, designed for extremely fast and\nmemory-efficient construction and lookup. They can be as large as 4GB, and\nat no point in their construction or use must all data be loaded into\nmemory. CDB files can contain multiple values for a given key.\n\nFor more information on the CDB file format, please see:\n<http://cr.yp.to/cdb.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }