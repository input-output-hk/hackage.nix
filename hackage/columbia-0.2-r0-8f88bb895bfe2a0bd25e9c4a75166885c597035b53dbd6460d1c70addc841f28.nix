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
      specVersion = "1.10";
      identifier = { name = "columbia"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jacinablackbox@yahoo.com";
      author = "James Candy";
      homepage = "";
      url = "";
      synopsis = "Enhanced serialization using seeking.";
      description = "Fundamental problems have been discovered with the architecture of this library. It is no longer supported and its use is not recommended. If it is really needed, it is available in one of the old versions.\n\nRelease notes for version 0.1.1:\n\n* Changed the invariant surrounding how files are seeked for reading/writing procedures. This permits an additional optimization. See Utils module for details.\n\n* Generalized the interface to Utils locking strategies to arbitrary monads incorporating exceptions and I/O.\n\nRelease notes for version 0.1.2:\n\n* Minor bug fixes.\n\nRelease notes for version 0.1.3:\n\n* Implemented additional functions specifically for handling dictionaries ('Map's).\n\n* Added basic theory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filelock" or (errorHandler.buildDepError "filelock"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."syb-with-class" or (errorHandler.buildDepError "syb-with-class"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."invariant" or (errorHandler.buildDepError "invariant"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pointless-haskell" or (errorHandler.buildDepError "pointless-haskell"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
          (hsPkgs."data-endian" or (errorHandler.buildDepError "data-endian"))
          ];
        buildable = true;
        };
      };
    }