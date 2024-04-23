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
      identifier = { name = "sednaDBXML"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Eric Jones (ericclaudejones at gmail.com)";
      author = "Eric C. Jones";
      homepage = "";
      url = "";
      synopsis = "Sedna Native XML Binding";
      description = "Sedna is a free native XML database which provides a full\nrange of core database services - persistent\nstorage, ACID transactions, security, indices,\nhot backup. Flexible XML processing facilities\ninclude W3C XQuery implementation, tight\nintegration of XQuery with full-text search\nfacilities and a node-level update\nlanguage. This package (will) provide a clean,\nsensible monadic interface to the\n(established) underlying C library.\nSedna Home Page:\nhttp://www.sedna.org/";
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