{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "penn-treebank";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Eric Kow 2008";
        maintainer = "eric.kow@gmail.com";
        author = "Eric Kow";
        homepage = "";
        url = "";
        synopsis = "Tools for manipulating the Penn TreeBank";
        description = "\nTools for working with the Penn TreeBank\n\nRight now, this only includes a parser for the Penn TreeBank\nformat.  But additional tools would be more than welcome!\n";
        buildType = "Simple";
      };
      components = {
        penn-treebank = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.containers
          ];
        };
      };
    }