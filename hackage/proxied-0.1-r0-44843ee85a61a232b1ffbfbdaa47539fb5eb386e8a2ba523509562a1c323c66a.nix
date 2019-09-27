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
      identifier = { name = "proxied"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2016 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/proxied";
      url = "";
      synopsis = "Make functions consume Proxy instead of undefined";
      description = "@proxied@ is a simple library that exports a function to\nconvert constant functions to ones that take a @proxy@\nvalue. This is useful for retrofiting typeclasses that\nhave functions that return a constant value for any value\nof a particular type (but still need to consume some\nvalue, since one of the parameterized types must appear\nin a typeclass function). Often, these functions are\ngiven @undefined@ as an argument, which might be\nconsidered poor design.\n\n@Proxy@, however, does not carry any of the\nerror-throwing risks of @undefined@, so it is much more\npreferable to take @Proxy@ as an argument to a constant\nfunction instead of @undefined@. Unfortunately, @Proxy@\nwas included in @base@ until GHC 7.8, so many of @base@'s\ntypeclasses still contain constant functions that aren't\namenable to passing @Proxy@. @proxied@ addresses this\nissue by providing variants of those typeclass functions\nthat take an explicit @proxy@ value.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          ];
        buildable = true;
        };
      };
    }