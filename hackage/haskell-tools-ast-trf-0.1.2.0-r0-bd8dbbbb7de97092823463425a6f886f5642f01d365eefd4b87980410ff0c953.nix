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
        name = "haskell-tools-ast-trf";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/nboldi/haskell-tools";
      url = "";
      synopsis = "Conversions on Haskell-Tools AST to prepare for refactorings";
      description = "Converts the Haskell-Tools AST between different versions to have source annotations that help refactorings. Have transformations that convert from ranges to range templates and then to source templates. Also have a transformation to put comments to their places.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.haskell-tools-ast)
          (hsPkgs.uniplate)
          (hsPkgs.references)
          (hsPkgs.structural-traversal)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.MissingH)
        ];
      };
    };
  }