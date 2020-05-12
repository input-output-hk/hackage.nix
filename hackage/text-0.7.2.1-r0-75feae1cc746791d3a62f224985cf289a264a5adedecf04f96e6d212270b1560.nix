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
    flags = { developer = false; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "text"; version = "0.7.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2008-2009 Tom Harper, 2009-2010 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>\nTom Harper <rtharper@aftereternity.co.uk>\nDuncan Coutts <duncan@haskell.org>";
      author = "Tom Harper <rtharper@aftereternity.co.uk>";
      homepage = "";
      url = "";
      synopsis = "An efficient packed Unicode text type";
      description = "An efficient packed Unicode text type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ]
          else [
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            ]);
        buildable = true;
        };
      };
    }