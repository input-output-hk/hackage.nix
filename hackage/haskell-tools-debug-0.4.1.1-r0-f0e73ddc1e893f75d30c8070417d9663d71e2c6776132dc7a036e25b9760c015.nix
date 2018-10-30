{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haskell-tools-debug";
        version = "0.4.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/haskell-tools/haskell-tools";
      url = "";
      synopsis = "Debugging Tools for Haskell-tools";
      description = "Debugging Tools for Haskell-tools";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.references)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.haskell-tools-ast)
          (hsPkgs.haskell-tools-backend-ghc)
          (hsPkgs.haskell-tools-refactor)
          (hsPkgs.haskell-tools-prettyprint)
        ];
      };
    };
  }