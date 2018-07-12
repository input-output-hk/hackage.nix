{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bytestring-trie";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2008--2009 wren ng thornton";
        maintainer = "wren@community.haskell.org";
        author = "wren ng thornton";
        homepage = "http://code.haskell.org/~wren/";
        url = "";
        synopsis = "Efficient map from strings to values.";
        description = "Efficient map from strings to values.\n\nThe implementation is based on /big-endian patricia trees/, like \"Data.IntMap\". We first trie on the elements of \"Data.ByteString\" and then trie on the big-endian bit representation of those elements.";
        buildType = "Simple";
      };
      components = {
        "bytestring-trie" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }