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
      identifier = { name = "incremental-parser"; version = "0.2.5"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2011-2016 Mario Blazevic";
      maintainer = "blamario@yahoo.com";
      author = "Mario Blazevic";
      homepage = "https://github.com/blamario/incremental-parser";
      url = "";
      synopsis = "Generic parser library capable of providing partial results from partial input.";
      description = "This package defines yet another parser combinator library. This one is implemented using the concept of Brzozowski\nderivatives, tweaked and optimized to work with any monoidal input type. Lists, ByteString, and Text are supported out\nof the box, as well as any other data type for which the monoid-subclasses package defines instances. If the parser\nresult is also a monoid, its chunks can be extracted incrementally, before the complete input is parsed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."monoid-subclasses" or (buildDepError "monoid-subclasses"))
          ];
        };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."monoid-subclasses" or (buildDepError "monoid-subclasses"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."checkers" or (buildDepError "checkers"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          };
        };
      benchmarks = {
        "CSV" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."monoid-subclasses" or (buildDepError "monoid-subclasses"))
            (hsPkgs."incremental-parser" or (buildDepError "incremental-parser"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }