{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.16.0.3";
        identifier = {
          name = "vcache-trie";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 by David Barbour";
        maintainer = "dmbarbour@gmail.com";
        author = "David Barbour";
        homepage = "http://github.com/dmbarbour/haskell-vcache-trie";
        url = "";
        synopsis = "patricia tries modeled above VCache";
        description = "VCache supports larger-than-memory values with caching, persistence,\nand structure sharing. Effective use of VCache requires useful data\nstructures be modeled above it. The trie is useful for modeling key\nvalue databases or abstract virtual filesystems, where keys have\nshared prefixes or elements with a common prefix are likely to be\nupdated together.\n\nCurrently, the implementation is specialized to a bytestring trie.";
        buildType = "Simple";
      };
      components = {
        vcache-trie = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-builder
            hsPkgs.array
            hsPkgs.vcache
          ];
        };
      };
    }