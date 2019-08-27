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
      identifier = { name = "total-maps"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "2015 Paweł Nowak";
      maintainer = "pawel834@gmail.com";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Dense and sparse total maps.";
      description = "Total maps are maps that contain a value for every key. This library provides\nvarious flavors of total maps.\n\nDense maps store values for all keys. Sparse maps store a default value\nand the values which differ from the default. Sparse maps trade the lack\nof Traversable for a very fast Foldable instance (if the data is really sparse).\n\nBounded maps require the key type to be enumerable and bounded (have a\nfinite number of values) for most of their functionality. Subset maps do not\nrequire the key to be bounded, instead they are parametized by a finite set of\nvalid keys. The key subset is retrieved with help of the excellent\n'reflection' library.\n\nThe Data.Total.Array modules provide total map implementations based on vectors.\nIt should usually be faster then Maps, unless you need to adjust single elements.\n\nMaps in this library provide most of their functions in typeclasses and so\nthe modules are designed to be imported unqualified.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."keys" or (buildDepError "keys"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."bytes" or (buildDepError "bytes"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."adjunctions" or (buildDepError "adjunctions"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."base-compat" or (buildDepError "base-compat"))
          ];
        };
      };
    }