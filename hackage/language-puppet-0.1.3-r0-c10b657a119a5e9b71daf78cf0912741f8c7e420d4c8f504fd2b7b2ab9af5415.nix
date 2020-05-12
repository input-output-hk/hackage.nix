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
      specVersion = "1.8";
      identifier = { name = "language-puppet"; version = "0.1.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "";
      url = "";
      synopsis = "Tools to parse and evaluate the Puppet DSL.";
      description = "This is a set of libraries designed to work with the Puppet DSL. It can be used to parse .pp files, compile and interpret them, evaluate the templates. It is still very experimental but is already pretty useful when working with the manifests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          ];
        buildable = true;
        };
      tests = {
        "test-lexer" = {
          depends = [
            (hsPkgs."language-puppet" or (errorHandler.buildDepError "language-puppet"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        "test-expr" = {
          depends = [
            (hsPkgs."language-puppet" or (errorHandler.buildDepError "language-puppet"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        "test-interpreter" = {
          depends = [
            (hsPkgs."language-puppet" or (errorHandler.buildDepError "language-puppet"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-lexer" = {
          depends = [
            (hsPkgs."language-puppet" or (errorHandler.buildDepError "language-puppet"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }