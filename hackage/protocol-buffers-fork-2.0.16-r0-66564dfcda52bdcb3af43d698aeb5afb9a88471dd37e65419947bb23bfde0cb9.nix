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
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "protocol-buffers-fork"; version = "2.0.16"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2012 Christopher Edward Kuklewicz";
      maintainer = "Stefan Wehr <wehr@cp-med.com>";
      author = "Christopher Edward Kuklewicz";
      homepage = "http://darcs.factisresearch.com/pub/protocol-buffers-fork/";
      url = "http://hackage.haskell.org/package/protocol-buffers-fork";
      synopsis = "Parse Google Protocol Buffer specifications";
      description = "Parse proto files and generate Haskell code. This is a fork of the protocol-buffers library at http://hackage.haskell.org/package/protocol-buffers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }