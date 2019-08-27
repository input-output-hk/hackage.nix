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
      specVersion = "1.22";
      identifier = { name = "hw-json"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-json#readme";
      url = "";
      synopsis = "Memory efficient JSON parser";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."hw-balancedparens" or (buildDepError "hw-balancedparens"))
          (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
          (hsPkgs."hw-conduit" or (buildDepError "hw-conduit"))
          (hsPkgs."hw-diagnostics" or (buildDepError "hw-diagnostics"))
          (hsPkgs."hw-mquery" or (buildDepError "hw-mquery"))
          (hsPkgs."hw-parser" or (buildDepError "hw-parser"))
          (hsPkgs."hw-prim" or (buildDepError "hw-prim"))
          (hsPkgs."hw-rankselect" or (buildDepError "hw-rankselect"))
          (hsPkgs."hw-rankselect-base" or (buildDepError "hw-rankselect-base"))
          (hsPkgs."mmap" or (buildDepError "mmap"))
          (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."word8" or (buildDepError "word8"))
          ];
        };
      exes = {
        "hw-json-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            (hsPkgs."hw-balancedparens" or (buildDepError "hw-balancedparens"))
            (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
            (hsPkgs."hw-conduit" or (buildDepError "hw-conduit"))
            (hsPkgs."hw-diagnostics" or (buildDepError "hw-diagnostics"))
            (hsPkgs."hw-json" or (buildDepError "hw-json"))
            (hsPkgs."hw-mquery" or (buildDepError "hw-mquery"))
            (hsPkgs."hw-parser" or (buildDepError "hw-parser"))
            (hsPkgs."hw-prim" or (buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or (buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (buildDepError "hw-rankselect-base"))
            (hsPkgs."mmap" or (buildDepError "mmap"))
            (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."word8" or (buildDepError "word8"))
            ];
          };
        };
      tests = {
        "hw-json-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hw-balancedparens" or (buildDepError "hw-balancedparens"))
            (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
            (hsPkgs."hw-conduit" or (buildDepError "hw-conduit"))
            (hsPkgs."hw-json" or (buildDepError "hw-json"))
            (hsPkgs."hw-prim" or (buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or (buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (buildDepError "hw-rankselect-base"))
            (hsPkgs."mmap" or (buildDepError "mmap"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."hw-balancedparens" or (buildDepError "hw-balancedparens"))
            (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
            (hsPkgs."hw-conduit" or (buildDepError "hw-conduit"))
            (hsPkgs."hw-json" or (buildDepError "hw-json"))
            (hsPkgs."hw-prim" or (buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or (buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (buildDepError "hw-rankselect-base"))
            (hsPkgs."mmap" or (buildDepError "mmap"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }