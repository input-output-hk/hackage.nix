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
    flags = { tests = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "data-reify"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Andy Gill";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill";
      homepage = "http://www.ittc.ku.edu/csdl/fpg/Tools/IOReification";
      url = "";
      synopsis = "Reify a recursive data structure into an explicit graph.";
      description = "'data-reify' provided the ability to turn recursive structures into explicit graphs.\nMany (implicitly or explicitly) recursive data structure can be given this ability, via\na type class instance. This gives an alternative to using 'Ref' for observable sharing.\n\nObservable sharing in general is unsafe, so we use the IO monad to bound this effect,\nbut can be used safely even with 'unsafePerformIO' if some simple conditions are met.\nTypically this package will be used to tie the knot with DSL's that depend of\nobservable sharing, like Lava.\n\nProviding an instance for 'MuRef' is the mechanism for allowing a structure to be\nreified into a graph, and several examples of this are provided.\n\nHistory:\nVersion 0.1 used unsafe pointer compares.\nVersion 0.2 of 'data-reify' used 'StableName's, and was much faster.\nVersion 0.3 provided two versions of 'MuRef', the mono-typed version,\nfor trees of a single type,\nand the dynamic-typed version, for trees of different types.\nVersion 0.4 used 'Int' as a synonym for 'Unique' rather than 'Data.Unique'\nfor node ids, by popular demand.\nVersion 0.5 merged the mono-typed and dynamic version again, by using\n'DynStableName', an unphantomized version of StableName.\n\n&#169; 2009 Andy Gill; BSD3 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      exes = {
        "data-reify-test1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."data-reify" or (buildDepError "data-reify"))
            ];
          };
        "data-reify-test2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."data-reify" or (buildDepError "data-reify"))
            ];
          };
        "data-reify-test3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."data-reify" or (buildDepError "data-reify"))
            ];
          };
        "data-reify-test4" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."data-reify" or (buildDepError "data-reify"))
            ];
          };
        "data-reify-test5" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."data-reify" or (buildDepError "data-reify"))
            ];
          };
        "data-reify-test6" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."data-reify" or (buildDepError "data-reify"))
            ];
          };
        "data-reify-test7" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."data-reify" or (buildDepError "data-reify"))
            ];
          };
        };
      };
    }