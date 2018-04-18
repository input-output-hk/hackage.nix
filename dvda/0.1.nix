{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      stresstest = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dvda";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gregmainland@gmail.edu";
        author = "Greg Horn";
        homepage = "";
        url = "";
        synopsis = "Efficient automatic differentiation";
        description = "DVDA Verifiably Differentiates Algorithmically\n\nThis library provides a symbolic type `Dvda.Expr` which is\nmanipulated mathematically through its Num\\/Fractional\\/Floating instances.\nExpr can be a scalar, vector, or matrix. Binary operations (adding\\/multiplying\\/etc)\nare all elementwise.\n\nMatrix/vector/scalar compatability is enforced at compile time\n\nEfficient derivatives can be computed. Internally reverse automatic differentiation\nis performed including efficient common subexpression elimination.\n\nFunction graphs can be JIT compiled into efficienty functions using \"buildHSFunction\".\nThis is the intended way to use this library.\n\nPretty graphviz plots!\n\nIf the runtime JIT stuff works in terminal ghci but not emacs haskell-mode, you may need to add\n`(setenv \"PATH\" (concatenate 'string (getenv \"PATH\") \":/usr/local/bin\"))` to your .emacs file\n\nTo get started look in `Dvda.Examples` or CompileTest.hs in the github repo";
        buildType = "Simple";
      };
      components = {
        dvda = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.vector
            hsPkgs.repa
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.graphviz
            hsPkgs.fgl
            hsPkgs.mtl
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.plugins
            hsPkgs.deepseq
          ];
        };
      };
    }