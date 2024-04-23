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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "pointless-haskell"; version = "0.0.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hugo Pacheco <hpacheco@di.uminho.pt>";
      author = "Alcino Cunha <alcino@di.uminho.pt>, Hugo Pacheco <hpacheco@di.uminho.pt>";
      homepage = "http://haskell.di.uminho.pt/wiki/Pointless+Haskell";
      url = "";
      synopsis = "Pointless Haskell library";
      description = "Pointless Haskell is library for point-free programming with recursion patterns defined as hylomorphisms, inspired in ideas from the PolyP library.\nGeneric recursion patterns can be expressed for recursive types and no support for mutually recursive types or nested data types is provided.\nThe library also features the visualization of the intermediate data structure of hylomorphisms with GHood (<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/GHood>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."GHood" or (errorHandler.buildDepError "GHood"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
        ];
        buildable = true;
      };
    };
  }