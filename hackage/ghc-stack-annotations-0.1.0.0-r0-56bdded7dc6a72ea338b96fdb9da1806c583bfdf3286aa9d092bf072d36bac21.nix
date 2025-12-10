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
      identifier = { name = "ghc-stack-annotations"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hannes@well-typed.com";
      author = "Hannes Siebenhandl, Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "RTS Callstack annotation library";
      description = "A compatibility library for the RTS Callstack annotations introduced in GHC 9.14.\n.\nAllows you to use the stack annotations without having to worry about older GHC versions.\nAs stack annotations rely on the newly introduced 'AnnFrame' stack frame type, this library\nis operationally a NO-OP for GHC versions below 9.14.\n.\nFor GHC <9.14, this library exposes an API identical to 'GHC.Stack.Annotation.Experimental' including\ndata types and type classes for writing 'StackAnnotation' instances, without worrying about backwards\ncompatibility.\nFor GHC >=9.14, this library re-exports the API of 'GHC.Stack.Annotation.Experimental'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "9.14") [
          (hsPkgs."ghc-internal" or (errorHandler.buildDepError "ghc-internal"))
          (hsPkgs."ghc-experimental" or (errorHandler.buildDepError "ghc-experimental"))
        ];
        buildable = true;
      };
    };
  }