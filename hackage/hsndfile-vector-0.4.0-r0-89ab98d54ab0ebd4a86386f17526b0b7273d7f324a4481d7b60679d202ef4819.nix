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
      identifier = { name = "hsndfile-vector"; version = "0.4.0"; };
      license = "LicenseRef-GPL";
      copyright = "Stefan Kersten, 2007-2009";
      maintainer = "Stefan Kersten <sk@k-hornz.de>";
      author = "Stefan Kersten";
      homepage = "http://haskell.org/haskellwiki/Hsndfile";
      url = "";
      synopsis = "Haskell bindings for libsndfile (Data.Vector interface).";
      description = "Haskell bindings for libsndfile (Data.Vector interface).\n\nlibsndfile is a comprehensive C library for reading\nand writing a large number of soundfile formats:\n<http://www.mega-nerd.com/libsndfile/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hsndfile" or (errorHandler.buildDepError "hsndfile"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }