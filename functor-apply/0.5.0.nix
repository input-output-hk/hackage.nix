{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "functor-apply";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2011 Edward A. Kmett, Copyright (C) 2004-2008 Dave Menendez";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://comonad.com/reader/";
        url = "";
        synopsis = "Strong lax semimonoidal endofunctors (Applicative sans pure)";
        description = "Strong lax semimonoidal endofunctors (Applicative sans pure)";
        buildType = "Simple";
      };
      components = {
        functor-apply = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.containers
          ];
        };
      };
    }