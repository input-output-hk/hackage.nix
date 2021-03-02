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
      specVersion = "1.2";
      identifier = { name = "full-sessions"; version = "0.6.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "keigo.imai@gmail.com";
      author = "Keigo IMAI";
      homepage = "http://www.agusa.i.is.nagoya-u.ac.jp/person/sydney/full-sessions.html";
      url = "";
      synopsis = "a monad for protocol-typed network programming";
      description = "This library defines a @Session@ monad, which provides static checking of\nsafe and consistent use of communication channels according to protocols.\nIt requires almost no type- or term- annotations.\nExamples inculude a SMTP client and a simple chat client with its own protocol.\nAlternatives are: the simple-sessions package\n(<http://hackage.haskell.org/package/simple-sessions>) and the sessions\npackage  (<http://hackage.haskell.org/package/sessions>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ] ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }