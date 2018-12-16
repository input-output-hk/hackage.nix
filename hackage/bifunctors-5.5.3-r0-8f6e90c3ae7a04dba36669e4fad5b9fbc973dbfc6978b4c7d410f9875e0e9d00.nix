{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      semigroups = true;
      tagged = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "bifunctors";
        version = "5.5.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2016 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/bifunctors/";
      url = "";
      synopsis = "Bifunctors";
      description = "Bifunctors.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs.base)
          (hsPkgs.base-orphans)
          (hsPkgs.comonad)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.th-abstraction)
          (hsPkgs.transformers)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.gt "8.2")) (hsPkgs.transformers-compat)) ++ pkgs.lib.optional (flags.tagged) (hsPkgs.tagged)) ++ pkgs.lib.optional (flags.semigroups) (hsPkgs.semigroups)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2" && (compiler.isGhc && compiler.version.lt "7.5")) (hsPkgs.ghc-prim);
      };
      tests = {
        "bifunctors-spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover)
          ];
        };
      };
    };
  }