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
      specVersion = "1.10";
      identifier = { name = "needle"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2014 Josh Kirklin";
      maintainer = "Josh Kirklin <jjvk2@cam.ac.uk>";
      author = "Josh Kirklin";
      homepage = "http://scrambledeggsontoast.github.io/2014/09/28/needle-announce/";
      url = "";
      synopsis = "ASCII-fied arrow notation";
      description = "Needle is a domain specific language for ASCII-fied arrow notation. See \"Control.Arrow.Needle\" for more information and an example.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."parsec-extra" or (errorHandler.buildDepError "parsec-extra"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }