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
      identifier = { name = "WashNGo"; version = "2.12.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2001-2006, Peter Thiemann";
      maintainer = "Marc Weber <marco-oweber@gmx.de>";
      author = "Peter Thiemann <thiemann@informatik.uni-freiburg.de>";
      homepage = "http://www.informatik.uni-freiburg.de/~thiemann/haskell/WASH/";
      url = "";
      synopsis = "WASH is a family of EDSLs for programming Web applications in Haskell.";
      description = "WASH is a family of embedded domain specific languages (EDSL) for programming Web applications in Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "wash2hs" = { buildable = true; };
        "washc" = {
          depends = [
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }