{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      description = "This package simply has a number of modules which import all the modules\nfrom each package that is distributed with GHC.\n\nThere's also a module \"Control.Instances.GHC_Packages\", that imports all of the\nabove modules, essentially importing every module distributed with GHC.\n\nWhy would you want to do this?\n\nLets say I've got a data type \\\"D a\\\". And a class \\\"C\\\".\n\nFurther, lets say I can define \\\"C (D a)\\\" if \"a\" is of class \\\"C1\\\".\nI can also \\\"C (D a)\\\" if \"a\" is of class \\\"C2\\\"\n\nLets try:\n\ninstance C1 a => C (D a) where ...\n\ninstance C2 a => C (D a) where ...\n\nThese are going to be overlapping. We can't do this.\n\nBut instead, we import \"Control.Instances.GHC_Packages\". And then we can use\n[reify](https://hackage.haskell.org/package/template-haskell-2.12.0.0/docs/Language-Haskell-TH.html#v:reify)\nfrom [Template Haskell](https://hackage.haskell.org/package/template-haskell-2.12.0.0)\nto bring every \\\"C1\\\" and \\\"C2\\\" instance in to scope that's defined anywhere in \"base\"\nor any GHC module.\n\nWe can then use Template Haskell to define all our instances. We can explicitly define what happens\nwhen both \\\"C1\\\" and \\\"C2\\\" instances are defined, perhaps prefering one over the other.\n\nAs we've got the full power of Haskell in Template Haskell, we can do these manipulations.\n\nThe package [static-closure](https://hackage.haskell.org/package/static-closure)\nis an example of using these instances to generate it's own instances for it's data type.\n\nThis package will need to be updated with each release of GHC but currently the\ncabal file and modules should contain appropriate pre-processor directives that\nthis package should work from least from GHC 7.8 to GHC 8.2.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."hoopl" or ((hsPkgs.pkgs-errors).buildDepError "hoopl"))
          (hsPkgs."hpc" or ((hsPkgs.pkgs-errors).buildDepError "hpc"))
          (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ] ++ (if system.isWindows
          then [
            (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
            ]
          else [
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.2") (hsPkgs."ghc-compact" or ((hsPkgs.pkgs-errors).buildDepError "ghc-compact"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8") (hsPkgs."ghc-boot" or ((hsPkgs.pkgs-errors).buildDepError "ghc-boot"))) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.10") [
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."haskell2010" or ((hsPkgs.pkgs-errors).buildDepError "haskell2010"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          ];
        buildable = true;
        };
      };
    }