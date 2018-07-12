{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "MetaObject";
          version = "0.0.6.20150815";
        };
        license = "BSD-3-Clause";
        copyright = "2006 Caio Marcelo, 2008-2015 Audrey Tang";
        maintainer = "Audrey Tang <audreyt@audreyt.org>";
        author = "Audrey Tang <audreyt@audreyt.org>";
        homepage = "";
        url = "";
        synopsis = "A meta-object system for Haskell based on Perl 6";
        description = "A meta-object system for Haskell based on Perl 6";
        buildType = "Simple";
      };
      components = {
        "MetaObject" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.stringtable-atom
          ];
        };
      };
    }