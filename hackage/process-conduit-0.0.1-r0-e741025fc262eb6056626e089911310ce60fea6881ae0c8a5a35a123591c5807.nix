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
      specVersion = "1.8";
      identifier = { name = "process-conduit"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2012, Hideyuki Tanaka";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "http://github.com/tanakh/process-conduit";
      url = "";
      synopsis = "Conduit for process";
      description = "Conduit for process";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."shakespeare-text" or (errorHandler.buildDepError "shakespeare-text"))
        ];
        buildable = true;
      };
      exes = {
        "process-conduit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."process-conduit" or (errorHandler.buildDepError "process-conduit"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "process-qq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process-conduit" or (errorHandler.buildDepError "process-conduit"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
    };
  }