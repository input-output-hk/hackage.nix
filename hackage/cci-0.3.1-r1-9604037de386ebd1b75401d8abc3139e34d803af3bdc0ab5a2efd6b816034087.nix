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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cci"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2012-2013 Parallel Scientific Labs, LLC";
      maintainer = "Facundo Domínguez <facundo.dominguez@parsci.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Bindings for the CCI networking library";
      description = "The CCI project is an open source communication interface that\naims to provide a simple and portable API, high performance,\nscalability for the largest deployments, and robustness in the\npresence of faults. It is developed and maintained by a\npartnership of research, academic, and industry members.\n\nSee <http://cci-forum.com> for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [ (pkgs."cci" or (errorHandler.sysDepError "cci")) ];
        buildable = true;
        };
      exes = {
        "cci-example-client" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cci" or (errorHandler.buildDepError "cci"))
            ];
          buildable = if flags.examples then true else false;
          };
        "cci-example-pingpong" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cci" or (errorHandler.buildDepError "cci"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = if flags.examples then true else false;
          };
        "cci-example-server" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cci" or (errorHandler.buildDepError "cci"))
            ];
          buildable = if flags.examples then true else false;
          };
        "cci-example-registration-benchmark" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cci" or (errorHandler.buildDepError "cci"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "test-cci" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cci" or (errorHandler.buildDepError "cci"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          buildable = true;
          };
        "test-worker" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cci" or (errorHandler.buildDepError "cci"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            ];
          buildable = true;
          };
        };
      };
    }