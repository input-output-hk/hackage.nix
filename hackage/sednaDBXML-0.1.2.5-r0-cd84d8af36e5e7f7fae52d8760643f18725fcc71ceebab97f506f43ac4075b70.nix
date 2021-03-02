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
      identifier = { name = "sednaDBXML"; version = "0.1.2.5"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Eric Jones (ericclaudejones at gmail.com)";
      author = "Eric C. Jones";
      homepage = "";
      url = "";
      synopsis = "Sedna C API XML Binding";
      description = "Sedna native XML database bindings.\nhttp://www.sedna.org/";
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
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        libs = [ (pkgs."sedna" or (errorHandler.sysDepError "sedna")) ];
        buildable = true;
        };
      };
    }