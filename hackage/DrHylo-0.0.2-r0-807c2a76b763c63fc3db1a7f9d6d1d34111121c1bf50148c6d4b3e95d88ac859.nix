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
      identifier = { name = "DrHylo"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hugo Pacheco <hpacheco@di.uminho.pt>";
      author = "Alcino Cunha <alcino@di.uminho.pt>, Hugo Pacheco <hpacheco@di.uminho.pt>";
      homepage = "http://haskell.di.uminho.pt/wiki/DrHylo";
      url = "";
      synopsis = "A tool for deriving hylomorphisms";
      description = "DrHylo is a tool for deriving hylomorphisms from a restricted Haskell syntax. It is based on the algorithm first presented in the paper Deriving Structural Hylomorphisms From Recursive Definitions at ICFP'96 by Hu, Iwasaki, and Takeichi.\nThe generated code can be run with Pointless Haskell (<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/pointless-haskell>), allowing the visualization of the recursion trees of Haskell functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pointless-haskell" or (errorHandler.buildDepError "pointless-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      exes = {
        "DrHylo" = {
          depends = [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."array" or (errorHandler.buildDepError "array"))
              (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
          };
        };
      };
    }