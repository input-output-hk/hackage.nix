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
      identifier = { name = "pure-cdb"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Boris Sukholitko <boriss@gmail.com>";
      maintainer = "Boris Sukholitko <boriss@gmail.com>";
      author = "Boris Sukholitko <boriss@gmail.com>";
      homepage = "https://github.com/bosu/pure-cdb";
      url = "";
      synopsis = "Another pure-haskell CDB (Constant Database) implementation";
      description = "A library for reading and writing CDB (Constant Database) files.\n\nCDB files are immutable key-value stores, designed for extremely fast and memory-efficient\nconstruction and lookup. They can be as large as 4GB, and at no point in their construction\nor use must all data be loaded into memory. CDB files can contain multiple values for a\ngiven key.\n\nFor more information on the CDB file format, please see: <http://cr.yp.to/cdb.html>\n\nPlease note, that there is another pure Haskell CDB library on Hackage:\n<http://hackage.haskell.org/package/hs-cdb>, using memory mapped bytestrings for IO.\nIt served as an inspiration for this package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."directory" or (buildDepError "directory"))
          ];
        };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."test-simple" or (buildDepError "test-simple"))
            (hsPkgs."pure-cdb" or (buildDepError "pure-cdb"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."Unixutils" or (buildDepError "Unixutils"))
            ];
          };
        };
      };
    }