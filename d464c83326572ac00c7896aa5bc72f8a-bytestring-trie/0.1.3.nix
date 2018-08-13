{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bytestring-trie";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008--2009 wren ng thornton";
      maintainer = "wren@community.haskell.org";
      author = "wren ng thornton";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "An efficient finite map from (byte)strings to values.";
      description = "An efficient finite map from (byte)strings to values.\n\nThe implementation is based on big-endian patricia\ntrees, like \"Data.IntMap\". We first trie on the\nelements of \"Data.ByteString\" and then trie on the\nbig-endian bit representation of those elements.\nPatricia trees have efficient algorithms for union\nand other merging operations, but they're also quick\nfor lookups and insertions.";
      buildType = "Simple";
    };
    components = {
      "bytestring-trie" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
        ];
      };
    };
  }