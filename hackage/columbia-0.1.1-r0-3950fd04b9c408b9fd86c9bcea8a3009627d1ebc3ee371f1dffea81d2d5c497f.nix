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
      identifier = { name = "columbia"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jacinablackbox@yahoo.com";
      author = "James Candy";
      homepage = "";
      url = "";
      synopsis = "Enhanced serialization for media that support seeking.";
      description = "Libraries such as binary and cereal support sequential reading and writing but do not rely on any further operations. Many media support seeking in files as well. This library implements a file format that supports random access to data entities by seeking.\n\nThis library by default enforces a strong concept of immutability; this has a number of benefits including sharing of substructure. Files in its format have a nominal mutable state that changes over discrete time steps, permitting strong reasoning. This work was inspired by Haskell's focus on immutability, and by the programming langauge Clojure's very disciplined management of mutable state.\n\nIn addition to a bare bones locking strategy, an optional transactional locking strategy over tree data structures is implemented. This gets this close to an object-oriented DBMS; there is a strong affinity between persisted objects and tree data structures. The transaction strategy prevents multiple processes from reading and writing on data that is mutually descendant in a tree structure. I argue that this is the appropriate generalization of transactions on traditional relational database records.\n\nThe database's store has been implemented over memory maps for speed, and is portable between Windows and Linux platforms.\n\nThis library also uses the syb-with-class library to streamline implementation of serializers for various data entities, so that you don't have to write much boilerplate ;).\n\nRelease notes for version 0.1.1:\n\n* Changed the invariant surrounding how files are seeked for reading/writing procedures. This permits an additional optimization. See Utils module for details.\n\n* Generalized the interface to Utils locking strategies to arbitrary monads incorporating exceptions and I/O.";
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
          (hsPkgs."pointed" or (errorHandler.buildDepError "pointed"))
        ];
        buildable = true;
      };
    };
  }