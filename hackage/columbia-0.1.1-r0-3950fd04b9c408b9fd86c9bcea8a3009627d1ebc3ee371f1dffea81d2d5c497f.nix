let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."filelock" or (buildDepError "filelock"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."syb-with-class" or (buildDepError "syb-with-class"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."invariant" or (buildDepError "invariant"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."pointless-haskell" or (buildDepError "pointless-haskell"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mmap" or (buildDepError "mmap"))
          (hsPkgs."data-endian" or (buildDepError "data-endian"))
          (hsPkgs."pointed" or (buildDepError "pointed"))
          ];
        };
      };
    }