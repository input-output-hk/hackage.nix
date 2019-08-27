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
          ];
        };
      };
    }