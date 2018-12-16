{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      cuda = false;
      gd = false;
    };
    package = {
      specVersion = "2.2";
      identifier = {
        name = "hasktorch-zoo";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Stites <fnz@fgvgrf.vb>, Austin Huang <nhfgvau@nyhz.zvg.rqh> - cipher:ROT13";
      author = "Hasktorch dev team";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Neural architectures in hasktorch";
      description = "Neural architectures, data loading packages, initializations, and common tensor abstractions in hasktorch.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.backprop)
          (hsPkgs.dimensions)
          (hsPkgs.hashable)
          (hsPkgs.hasktorch)
          (hsPkgs.microlens)
          (hsPkgs.singletons)
          (hsPkgs.generic-lens)
          (hsPkgs.ghc-typelits-natnormalise)
          (hsPkgs.vector)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.deepseq)
          (hsPkgs.mwc-random)
          (hsPkgs.primitive)
          (hsPkgs.safe-exceptions)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ] ++ (if flags.gd
          then [ (hsPkgs.gd) ]
          else [ (hsPkgs.JuicyPixels) ]);
      };
    };
  }