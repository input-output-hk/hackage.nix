{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "json-builder";
          version = "0.2.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011-2012 Leon P Smith";
        maintainer = "leon@melding-monads.com";
        author = "Leon P Smith";
        homepage = "http://github.com/lpsmith/json-builder";
        url = "";
        synopsis = "Data structure agnostic JSON serialization";
        description = "Most json packages dictate a data structure that corresponds to json values.\nTo serialize other values to json, then that value must be marshalled into\nthe specified structure.\n\nThis library avoids this marshalling step, and is thus potentially more\nefficient when serializing arbitrary data structures.  Unfortunately\njson-builder cannot yet read or process json data,  and it's not clear\nto me yet how pull a similar kind of trick to avoid unnecessary data\nstructures when parsing json data into arbitrary data types.";
        buildType = "Simple";
      };
      components = {
        json-builder = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.blaze-textual
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.utf8-string
            hsPkgs.vector
          ];
        };
      };
    }