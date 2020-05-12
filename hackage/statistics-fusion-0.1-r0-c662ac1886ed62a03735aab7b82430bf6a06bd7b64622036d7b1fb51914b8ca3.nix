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
      identifier = { name = "statistics-fusion"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Don Stewart 2008,";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/statistics-fusion";
      url = "";
      synopsis = "High performance statisticspackage  using stream fusion";
      description = "High performance statistics package using stream fusion";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."uvector" or (errorHandler.buildDepError "uvector"))
          ];
        buildable = true;
        };
      };
    }