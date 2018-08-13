{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haskell-tools-backend-ghc";
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/nboldi/haskell-tools";
      url = "";
      synopsis = "Creating the Haskell-Tools AST from GHC's representations";
      description = "This package collects information from various representations of a Haskell program in GHC. Basically GHC provides us with the parsed, the renamed and the type checked representation of the program, if it was type correct. Each version contains different information. For example, the renamed AST contains the unique names of the definitions, however, template haskell splices are already resolved and thus missing from that version of the AST. To get the final representation we perform a transformation on the parsed and renamed representation, and then use the type checked one to look up the types of the names. The whole transformation is defined in the `Modules` module. Other modules define the functions that convert elements of the GHC AST to our AST.";
      buildType = "Simple";
    };
    components = {
      "haskell-tools-backend-ghc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.references)
          (hsPkgs.bytestring)
          (hsPkgs.safe)
          (hsPkgs.uniplate)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.ghc)
          (hsPkgs.haskell-tools-ast)
          (hsPkgs.ghc-boot-th)
        ];
      };
    };
  }