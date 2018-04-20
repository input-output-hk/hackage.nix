{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "failable-list";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2008-2009 Duncan Coutts <duncan@haskell.org>\n2009 John Millikin <jmillikin@gmail.com>";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "Duncan Coutts <duncan@haskell.org>\nJohn Millikin <jmillikin@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A list-like type for lazy streams, which might terminate with an error.";
        description = "";
        buildType = "Simple";
      };
      components = {
        failable-list = {
          depends  = [ hsPkgs.base ];
        };
      };
    }