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
      identifier = { name = "ghc-instances"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Clinton Mead";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "https://github.com/clintonmead/ghc-instances#readme";
      url = "";
      synopsis = "Easily import all instances contained in GHC distributed libraries";
      description = "This package simply has a number of modules which import all the modules\nfrom each package that is distributed with GHC.\nThere's also a module \"Control.Instances.GHC_Packages\", that imports all of the\nabove modules, essentially importing every module distributed with GHC.\nWhy would you want to do this?\nLets say I've got a data type \\\"D a\\\". And a class \\\"C\\\".\nFurther, lets say I can define \\\"C (D a)\\\" if \"a\" is of class \\\"C1\\\".\nI can also \\\"C (D a)\\\" if \"a\" is of class \\\"C2\\\"\nLets try:\ninstance C1 a => C (D a) where ...\ninstance C2 a => C (D a) where ...\nThese are going to be overlapping. We can't do this.\nBut instead, we import \"Control.Instances.GHC_Packages\". And then we can use\n[reify](https://hackage.haskell.org/package/template-haskell-2.12.0.0/docs/Language-Haskell-TH.html#v:reify)\nfrom [Template Haskell](https://hackage.haskell.org/package/template-haskell-2.12.0.0)\nto bring every \\\"C1\\\" and \\\"C2\\\" instance in to scope that's defined anywhere in \"base\"\nor any GHC module.\nWe can then use Template Haskell to define all our instances. We can explicitly define what happens\nwhen both \\\"C1\\\" and \\\"C2\\\" instances are defined, perhaps prefering one over the other.\nAs we've got the full power of Haskell in Template Haskell, we can do these manipulations.\nThe package [static-closure](https://hackage.haskell.org/package/static-closure)\nis an example of using these instances to generate it's own instances for it's data type.\nThis package will need to be updated with each release of GHC but currently the\ncabal file and modules should contain appropriate pre-processor directives that\nthis package should work from least from GHC 7.8 to GHC 8.2.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."hoopl" or (errorHandler.buildDepError "hoopl"))
          (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.2") (hsPkgs."ghc-compact" or (errorHandler.buildDepError "ghc-compact"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8") (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.10") [
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."haskell2010" or (errorHandler.buildDepError "haskell2010"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
        buildable = true;
        };
      };
    }