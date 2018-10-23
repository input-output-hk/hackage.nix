{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haskell-tools-prettyprint";
        version = "0.7.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/haskell-tools/haskell-tools";
      url = "";
      synopsis = "Pretty printing of Haskell-Tools AST";
      description = "Converts the Haskell-Tools AST to text. Prepares the AST for this conversion. If the AST was created from the GHC AST this pretty printing will result in the original source code. Generated AST parts will get the default formatting. Works using the source annotations that are present in the AST. Creates a rose tree first to simplify the conversion.";
      buildType = "Simple";
    };
    components = {
      "haskell-tools-prettyprint" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.references)
          (hsPkgs.uniplate)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.ghc)
          (hsPkgs.haskell-tools-ast)
        ];
      };
    };
  }