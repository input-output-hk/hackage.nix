{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "bencode";
          version = "0.5.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2005-2009, David Himmelstrup\n2006 Lemmih <lemmih@gmail.com>\n2005 Jesper Louis Andersen <jlouis@mongers.org>";
        maintainer = "Lemmih (lemmih@gmail.com)";
        author = "Lemmih (lemmih@gmail.com), Jesper Louis Andersen";
        homepage = "";
        url = "";
        synopsis = "Parser and printer for bencoded data.";
        description = "";
        buildType = "Simple";
      };
      components = {
        bencode = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.binary
          ];
        };
      };
    }