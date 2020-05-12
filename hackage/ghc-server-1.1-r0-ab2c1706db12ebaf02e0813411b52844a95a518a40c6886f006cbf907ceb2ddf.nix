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
      identifier = { name = "ghc-server"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "A server interface to GHC.";
      description = "A server interface to GHC.\nSupported major GHC versions: 7.4, 7.6, 7.8";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc")) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.4") [
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."atto-lisp" or (errorHandler.buildDepError "atto-lisp"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          ];
        buildable = true;
        };
      exes = {
        "ghc-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-server" or (errorHandler.buildDepError "ghc-server"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = true;
          };
        };
      };
    }