{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "reactive";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2007-2008 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "http://haskell.org/haskellwiki/reactive";
        url = "http://darcs.haskell.org/packages/reactive";
        synopsis = "Simple foundation for functional reactive programming";
        description = "/Reactive/ is a simple foundation for programming reactive systems\nfunctionally.  Like Fran\\/FRP, it has a notions of (reactive) behaviors and\nevents.  Like DataDriven, Reactive has a data-driven implementation.\nThe main difference between Reactive and DataDriven is that Reactive\nbuilds on functional \\\"futures\\\" (using threading), while DataDriven\nbuilds on continuation-based computations.\n\nPlease see the project wiki page: <http://haskell.org/haskellwiki/reactive>\n\nThe module documentation pages have links to colorized source code and\nto wiki pages where you can read and contribute user comments.  Enjoy!\n\n&#169; 2007 by Conal Elliott; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        "reactive" = {
          depends  = [
            hsPkgs.base
            hsPkgs.TypeCompose
          ];
        };
      };
    }