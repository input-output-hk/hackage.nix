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
    flags = { sse42 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cityhash"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Austin Seipp <mad.one@gmail.com>";
      author = "Austin Seipp <mad.one@gmail.com>";
      homepage = "http://github.com/thoughtpolice/hs-cityhash";
      url = "";
      synopsis = "Bindings to CityHash";
      description = "This package implements a binding to the CityHash family of hashing functions (implemented in C++.)\n\nSee <http://code.google.com/p/cityhash/> for more information.\n\nThis package has optional SSE4.2 support. If you build it with the @-fsse42@ flag, the 128-bit\nhashing functions will use an SSE-optimized implementation (which takes advantage of the @crc32@\ninstruction present on recent Intel/AMD machines.) The 64-bit hashing functions are unaffected.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."largeword" or (buildDepError "largeword"))
          ];
        libs = [ (pkgs."stdc++" or (sysDepError "stdc++")) ];
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."largeword" or (buildDepError "largeword"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."cityhash" or (buildDepError "cityhash"))
            ];
          };
        };
      };
    }