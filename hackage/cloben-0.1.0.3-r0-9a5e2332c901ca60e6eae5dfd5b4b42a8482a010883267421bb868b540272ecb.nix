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
      identifier = { name = "cloben"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2015 Sebastian Graf";
      maintainer = "sgraf1337@gmail.com";
      author = "Sebastian Graf";
      homepage = "http://github.com/sgraf812/cloben#readme";
      url = "";
      synopsis = "Clone and benchmark Haskell cabal projects";
      description = "@cloben@ is a Haskell shell script transforms @cabal bench@/@stack bench@\nresults into a CSV file readable by @gipeda@ for visualization.\nPrior to that, it optionally clones a specific commit of a given\ngit repository into a temporary folder in which it then performs the benchmarking.\n\nExample run of some default @fib@ benchmarks:\n\n@\n\$ cloben https:\\/\\/github.com\\/sgraf812\\/benchmark-test 9982583\nbuild\\/warnings;1.0\nbenchmarks\\/fib\\/10;487.7\nbenchmarks\\/fib\\/35;81910000.0\nbenchmarks\\/fib\\/37;215200000.0\n@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cloben" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."turtle" or (buildDepError "turtle"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          };
        };
      };
    }