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
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "second-transfer"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015, Alcides Viamontes Esquivel  ";
      maintainer = "alcidesv@zunzun.se";
      author = "Alcides Viamontes Esquivel";
      homepage = "https://www.httptwo.com/second-transfer/";
      url = "";
      synopsis = "Second Transfer HTTP/2 web server";
      description = "Second Transfer HTTP/2 web server";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."http2" or (errorHandler.buildDepError "http2"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        libs = [
          (pkgs."ssl" or (errorHandler.sysDepError "ssl"))
          (pkgs."crypto" or (errorHandler.sysDepError "crypto"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (errorHandler.buildToolDepError "cpphs")))
          ];
        buildable = true;
        };
      tests = {
        "compiling-ok" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."second-transfer" or (errorHandler.buildDepError "second-transfer"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            ];
          buildable = true;
          };
        "hunit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."second-transfer" or (errorHandler.buildDepError "second-transfer"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http2" or (errorHandler.buildDepError "http2"))
            ];
          buildable = true;
          };
        };
      };
    }