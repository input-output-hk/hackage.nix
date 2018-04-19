{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "data-object-json";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/data-object-json/tree/master";
        url = "";
        synopsis = "Serialize JSON data to/from Haskell using the data-object library.";
        description = "";
        buildType = "Simple";
      };
      components = {
        data-object-json = {
          depends  = [
            hsPkgs.base
            hsPkgs.JSONb
            hsPkgs.bytestring-trie
            hsPkgs.bytestring
            hsPkgs.data-object
            hsPkgs.convertible-text
            hsPkgs.failure
            hsPkgs.text
          ];
        };
      };
    }