{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      template-haskell = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "micro-recursion-schemes";
          version = "5.0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2015 Edward A. Kmett, 2018 Vanessa McHale";
        maintainer = "vmchale@gmail.com";
        author = "Vanessa McHale, Edward A. Kmett";
        homepage = "";
        url = "";
        synopsis = "Simple recursion schemes";
        description = "This package provides the core functionality of [recursion-schemes](http://hackage.haskell.org/package/recursion-schemes), but without odious dependencies on unneeded packages.";
        buildType = "Simple";
      };
      components = {
        micro-recursion-schemes = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optionals _flags.template-haskell [
            hsPkgs.th-abstraction
            hsPkgs.template-haskell
          ];
          build-tools = pkgs.lib.optional _flags.template-haskell hsPkgs.cpphs;
        };
        tests = {
          Expr = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.micro-recursion-schemes
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }