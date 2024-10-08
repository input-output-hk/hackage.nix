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
      specVersion = "1.6";
      identifier = { name = "hsndfile-storablevector"; version = "0.5.2"; };
      license = "LicenseRef-LGPL-2";
      copyright = "Stefan Kersten, 2007-2010";
      maintainer = "Stefan Kersten <sk@k-hornz.de>";
      author = "Stefan Kersten";
      homepage = "http://haskell.org/haskellwiki/Hsndfile";
      url = "";
      synopsis = "Haskell bindings for libsndfile (Data.StorableVector interface)";
      description = "Haskell bindings for libsndfile (@Data.StorableVector@ interface).\n\nFor more information on /hsndfile/ visit its homepage at <http://haskell.org/haskellwiki/Hsndfile>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hsndfile" or (errorHandler.buildDepError "hsndfile"))
          (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
        ];
        buildable = true;
      };
    };
  }