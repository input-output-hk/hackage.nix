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
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "vcache-trie"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 by David Barbour";
      maintainer = "dmbarbour@gmail.com";
      author = "David Barbour";
      homepage = "http://github.com/dmbarbour/haskell-vcache-trie";
      url = "";
      synopsis = "patricia tries modeled above VCache ";
      description = "VCache supports larger-than-memory values with caching, persistence,\nand structure sharing. Effective use of VCache requires useful data\nstructures be modeled above it. The trie is useful for modeling key\nvalue databases or abstract virtual filesystems, where keys have\nshared prefixes or elements with a common prefix are likely to be\nupdated together.\n\nCurrently, the implementation is specialized to a bytestring trie,\nand follows the interface of the bytestring-trie package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-builder" or (errorHandler.buildDepError "bytestring-builder"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."vcache" or (errorHandler.buildDepError "vcache"))
        ];
        buildable = true;
      };
    };
  }