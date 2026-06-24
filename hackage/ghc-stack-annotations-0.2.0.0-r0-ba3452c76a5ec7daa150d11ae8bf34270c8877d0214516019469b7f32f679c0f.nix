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
      specVersion = "3.8";
      identifier = { name = "ghc-stack-annotations"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hannes@well-typed.com";
      author = "Hannes Siebenhandl, Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "RTS Callstack annotation library";
      description = "A compatibility library for the RTS Callstack annotations introduced in GHC 9.14.\n.\nAllows you to use the stack annotations without having to worry about older GHC versions.\nAs stack annotations rely on the newly introduced 'AnnFrame' stack frame type, this library\nis operationally a NO-OP for GHC versions below 9.14.\n.\nFor GHC <9.14, this library exposes an API identical to 'GHC.Stack.Annotation.Experimental' of the latest\nsupported GHC version.\nFor GHC >=9.14, this library exposes an API identical to 'GHC.Stack.Annotation.Experimental' of the latest\nsupported GHC version.\nFor the latest supported GHC version, we re-export the interface of 'GHC.Stack.Annotation.Experimental'\n.\nThis API abstracts over the GHC 'StackAnnotation' type class, thus allows you to write instances for all\nsupported GHC versions without any @-XCPP@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.14") (hsPkgs."ghc-experimental" or (errorHandler.buildDepError "ghc-experimental"));
        buildable = true;
      };
      tests = {
        "ghc-stack-annotation-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-heap" or (errorHandler.buildDepError "ghc-heap"))
            (hsPkgs."ghc-stack-annotations" or (errorHandler.buildDepError "ghc-stack-annotations"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "9.14") [
            (hsPkgs."ghc-experimental" or (errorHandler.buildDepError "ghc-experimental"))
            (hsPkgs."ghc-internal" or (errorHandler.buildDepError "ghc-internal"))
          ];
          buildable = true;
        };
      };
    };
  }