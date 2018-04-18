{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "TypeCompose";
          version = "0.9.7";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2007-2012 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "https://github.com/conal/TypeCompose";
        url = "";
        synopsis = "Type composition classes & instances";
        description = "TypeCompose provides some classes & instances for forms of type\ncomposition, as well as some modules who haven't yet found a home.\n\nPlease see the project wiki page: <http://haskell.org/haskellwiki/TypeCompose>\n\nCopyright 2007-2012 by Conal Elliott; BSD3 license.";
        buildType = "Simple";
      };
      components = {
        TypeCompose = {
          depends  = [ hsPkgs.base ];
        };
      };
    }