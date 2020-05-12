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
      specVersion = "1.3";
      identifier = { name = "lighttpd-conf-qq"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) Matt Morrow";
      maintainer = "Matt Morrow <mjm2002@gmail.com>";
      author = "Matt Morrow";
      homepage = "";
      url = "";
      synopsis = "A QuasiQuoter for lighttpd configuration files.";
      description = "A QuasiQuoter for lighttpd configuration files.\nSee Language.Haskell.TH.Quote for details on\nQuasiQuoters. Haddock docs are at\n<http://code.haskell.org/~morrow/code/haskell/web/lighttpd-conf-qq/haddock/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."lighttpd-conf" or (errorHandler.buildDepError "lighttpd-conf"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."packedstring" or (errorHandler.buildDepError "packedstring"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.ghc or (pkgs.buildPackages.ghc or (errorHandler.buildToolDepError "ghc")))
          ];
        buildable = true;
        };
      };
    }