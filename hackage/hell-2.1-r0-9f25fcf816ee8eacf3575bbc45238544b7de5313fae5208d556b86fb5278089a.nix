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
      identifier = { name = "hell"; version = "2.1"; };
      license = "BSD-3-Clause";
      copyright = "2013 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "A Haskell shell based on shell-conduit";
      description = "A Haskell shell based on shell-conduit";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."pdfinfo" or (errorHandler.buildDepError "pdfinfo"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."monad-extras" or (errorHandler.buildDepError "monad-extras"))
          (hsPkgs."shell-conduit" or (errorHandler.buildDepError "shell-conduit"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "7.6"
          then [ (hsPkgs."time" or (errorHandler.buildDepError "time")) ]
          else [
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            ]);
        buildable = true;
        };
      exes = {
        "hell" = {
          depends = [
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hell" or (errorHandler.buildDepError "hell"))
            ];
          buildable = true;
          };
        };
      };
    }