{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "CC-delcont";
          version = "0.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2005--2008, R. Kent Dybvig, Simon Peyton Jones,\nAmr Sabry, Oleg Kiselyov, Chung-chieh Shan";
        maintainer = "dan.doel@gmail.com";
        author = "R. Kent Dybvig, Simon Peyton Jones, Amr Sabry, Oleg Kiselyov,\nChung-chieh Shan";
        homepage = "http://code.haskell.org/~dolio/CC-delcont";
        url = "";
        synopsis = "Delimited continuations and dynamically scoped variables";
        description = "An implementation of multi-prompt delimited continuations based\non the paper, /A Monadic Framework for Delimited Continuations/,\nby R. Kent Dybvig, Simon Peyton Jones and Amr Sabry\n(<http://www.cs.indiana.edu/~sabry/papers/monadicDC.pdf>).\nIt also includes a corresponding implementation of dynamically\nscoped variables, as implemented in the paper,\n/Delimited Dynamic Binding/, by Oleg Kiselyov, Chung-chieh Shan\nand Amr Sabry\n(<http://okmij.org/ftp/papers/DDBinding.pdf>),\nadapted from the original haskell code,\n(<http://okmij.org/ftp/packages/DBplusDC.tar.gz>).";
        buildType = "Simple";
      };
      components = {
        "CC-delcont" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }