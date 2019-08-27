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
      specVersion = "2.4";
      identifier = { name = "NaperianNetCDF"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Dominic Steinitz";
      maintainer = "dominic@steinitz.org";
      author = "Dominic Steinitz";
      homepage = "";
      url = "";
      synopsis = "Instances of NcStore for hypercuboids";
      description = "This allows [NetCDF](https://en.wikipedia.org/wiki/NetCDF) data to be read and written into [hypercuboids](http://www.cs.ox.ac.uk/people/jeremy.gibbons/publications/apl-extabs.pdf) e.g. values with type @Hyper '[Vector 5, Vector 2, Vector 3] Int@ such as @\\<\\<\\<1,2,3,4,5>, \\<6,7,8,9,10>>, \\<\\<11,12,13,14,15>, \\<16,17,18,19,20>>, \\<\\<21,22,23,24,25>, \\<26,27,28,29,30>>>@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Naperian" or (buildDepError "Naperian"))
          (hsPkgs."hnetcdf" or (buildDepError "hnetcdf"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "Main" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."NaperianExample" or (buildDepError "NaperianExample"))
            (hsPkgs."Naperian" or (buildDepError "Naperian"))
            (hsPkgs."hnetcdf" or (buildDepError "hnetcdf"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          };
        };
      };
    }