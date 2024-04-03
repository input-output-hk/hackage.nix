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
    flags = { integer-gmp = true; random-initial-seed = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "hashable"; version = "1.4.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Milan Straka <fox@ucw.cz>\nJohan Tibell <johan.tibell@gmail.com>";
      homepage = "http://github.com/haskell-unordered-containers/hashable";
      url = "";
      synopsis = "A class for types that can be converted to a hash value";
      description = "This package defines a class, 'Hashable', for types that\ncan be converted to a hash value.  This class\nexists for the benefit of hashing-based data\nstructures.  The package provides instances for\nbasic types and a way to combine hash values.\n\nThe 'Hashable' 'hash' values are not guaranteed to be stable across library versions, operating systems or architectures. For stable hashing use named hashes: SHA256, CRC32 etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "9.2"
          then [
            (hsPkgs."os-string" or (errorHandler.buildDepError "os-string"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ]
          else [
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ])) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "9.2")) (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "9.4")) (hsPkgs."data-array-byte" or (errorHandler.buildDepError "data-array-byte"))) ++ (if compiler.isGhc && (compiler.version).ge "9"
          then [
            (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "9.0.2")) (hsPkgs."ghc-bignum-orphans" or (errorHandler.buildDepError "ghc-bignum-orphans"))
          else if flags.integer-gmp
            then [
              (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
              ]
            else [
              (hsPkgs."integer-simple" or (errorHandler.buildDepError "integer-simple"))
              ]);
        buildable = true;
        };
      tests = {
        "hashable-tests" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "9.2") (hsPkgs."os-string" or (errorHandler.buildDepError "os-string"))) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = true;
          };
        "hashable-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            ];
          buildable = true;
          };
        };
      };
    }