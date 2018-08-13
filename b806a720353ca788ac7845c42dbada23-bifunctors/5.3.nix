{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      semigroups = true;
      tagged = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "bifunctors";
        version = "5.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2016 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/bifunctors/";
      url = "";
      synopsis = "Bifunctors";
      description = "Bifunctors";
      buildType = "Simple";
    };
    components = {
      "bifunctors" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.base-orphans)
          (hsPkgs.comonad)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
        ] ++ pkgs.lib.optional (_flags.tagged) (hsPkgs.tagged)) ++ pkgs.lib.optional (_flags.semigroups) (hsPkgs.semigroups)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2" && (compiler.isGhc && compiler.version.lt "7.5")) (hsPkgs.ghc-prim);
      };
      tests = {
        "bifunctors-spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
          ];
        };
      };
    };
  }