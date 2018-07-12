{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "special-keys";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mr.hugo.gomes@gmail.com";
        author = "Hugo Gomes";
        homepage = "";
        url = "";
        synopsis = "Simple data types that help me here and there.";
        description = "Datatypes that I use as keys to index other data types. Here you will find a wrap of UUID and also constraints on Text so that it never exceeds a given number of characters.";
        buildType = "Simple";
      };
      components = {
        "special-keys" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.text
            hsPkgs.safecopy
            hsPkgs.cereal
            hsPkgs.path-pieces
            hsPkgs.blaze-markup
            hsPkgs.deepseq
            hsPkgs.primitive
            hsPkgs.bytestring
            hsPkgs.uuid
            hsPkgs.mwc-random
            hsPkgs.aeson
          ];
        };
      };
    }