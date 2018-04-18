{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "recursion-schemes";
          version = "2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/recursion-schemes/";
        url = "";
        synopsis = "Generalized bananas, lenses and barbed wire";
        description = "Generalized bananas, lenses and barbed wire\n\n/Changes since 2.0/:\n\n* Compatibility with transformers 0.3\n\n* Resolved deprecation warnings caused by changes to Data.Typeable";
        buildType = "Simple";
      };
      components = {
        recursion-schemes = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.comonad
            hsPkgs.comonad-transformers
            hsPkgs.free
          ];
        };
      };
    }