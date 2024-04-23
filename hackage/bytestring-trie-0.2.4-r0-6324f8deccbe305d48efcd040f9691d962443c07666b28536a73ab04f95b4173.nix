{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {
      base4 = true;
      usecinternal = false;
      applicativeinbase = true;
      bytestringinbase = false;
    };
    package = {
      specVersion = "1.6";
      identifier = { name = "bytestring-trie"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008--2014 wren gayle romano";
      maintainer = "wren@community.haskell.org";
      author = "wren gayle romano";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "An efficient finite map from (byte)strings to values.";
      description = "An efficient finite map from (byte)strings to values.\n\nThe implementation is based on big-endian patricia\ntrees, like \"Data.IntMap\". We first trie on the\nelements of \"Data.ByteString\" and then trie on the\nbig-endian bit representation of those elements.\nPatricia trees have efficient algorithms for union\nand other merging operations, but they're also quick\nfor lookups and insertions.\n\nIf you are only interested in being able to associate\nstrings to values, then you may prefer the @hashmap@\npackage which is faster for those only needing a\nmap-like structure. This package is intended for\nthose who need the extra capabilities that a trie-like\nstructure can offer (e.g., structure sharing to\nreduce memory costs for highly redundant keys,\ntaking the submap of all keys with a given prefix,\ncontextual mapping, extracting the minimum and\nmaximum keys, etc.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ] ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ]) ++ (if flags.bytestringinbase
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ])) ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }