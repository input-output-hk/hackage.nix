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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "yoga"; version = "0.0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2017-present";
      maintainer = "Krajcevski@gmail.com";
      author = "Pavel Krajcevski";
      homepage = "";
      url = "";
      synopsis = "Bindings to Facebook's Yoga layout library";
      description = "The <https://facebook.github.com/yoga Yoga> library from\n<https://facebook.github.com/ Facebook> is a fast layout engine\nwritten in C that implements flexbox. There are two\nmain ways to interface with these bindings. The high-level\nbindings are stored in the Yoga module and provide a more\nHaskell-like interface to the library. The other option is to\ndirectly use the C-level bindings in \"Bindings.Yoga\". If you do\nso you do so at your own risk (i.e. you must manage your own\nmemory).\nThe examples are not built nor included by default. Please\nrefer to the source tarball for examples on how to use this\nlibrary.\nThese bindings are not affiliated with Facebook in any way,\nand have been developed separately for the sole purpose of\ninterfacing with their open source library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ieee754" or (buildDepError "ieee754"))
          (hsPkgs."bindings-DSL" or (buildDepError "bindings-DSL"))
          ];
        libs = [ (pkgs."stdc++" or (sysDepError "stdc++")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        };
      exes = {
        "yoga-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."yoga" or (buildDepError "yoga"))
            ];
          };
        };
      };
    }