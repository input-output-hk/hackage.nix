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
      specVersion = "1.10.0";
      identifier = { name = "sednaDBXML"; version = "0.1.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Eric Jones (ericclaudejones at gmail.com)";
      author = "Eric C. Jones";
      homepage = "";
      url = "";
      synopsis = "Sedna Native XML Binding";
      description = "Sedna is a free native XML developed by the Institute for\nSystem Programming RAS database. Sedna\nprovides a full range of core database\nservices - persistent storage, ACID\ntransactions, security, indices, hot\nbackup. Flexible XML processing facilities\ninclude W3C XQuery implementation, tight\nintegration of XQuery with full-text search\nfacilities and a node-level update\nlanguage. This package provides language\nbindings and (will) provide a clean, sensible\nmonadic interface to the (established)\nunderlying C library.\nSedna Home Page:\nhttp://www.sedna.org/";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        libs = [ (pkgs."sedna" or (errorHandler.sysDepError "sedna")) ];
        buildable = true;
        };
      };
    }