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
      identifier = { name = "proxied"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2016 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/proxied";
      url = "";
      synopsis = "Make functions consume Proxy instead of undefined";
      description = "@proxied@ is a simple library that exports a function to\nconvert constant functions to ones that take a @proxy@\nvalue in the \"Data.Proxied\" module. This is useful for\nretrofiting typeclasses that have functions that return a\nconstant value for any value of a particular type (but\nstill need to consume some value, since one of the\nparameterized types must appear in a typeclass function).\nOften, these functions are given @undefined@ as an\nargument, which might be considered poor design.\n\n@Proxy@, however, does not carry any of the\nerror-throwing risks of @undefined@, so it is much more\npreferable to take @Proxy@ as an argument to a constant\nfunction instead of @undefined@. Unfortunately, @Proxy@\nwas included in @base@ until GHC 7.8, so many of @base@'s\ntypeclasses still contain constant functions that aren't\namenable to passing @Proxy@. @proxied@ addresses this\nissue by providing variants of those typeclass functions\nthat take an explicit @proxy@ value.\n\nThis library also contains the \"Data.Proxyless\" module,\nwhich works in the opposite direction. That is, one can\ntake functions which take @Proxy@ (or @undefined@) as an\nargument and convert them to functions which take no\narguments. This trick relies on the @-XTypeApplications@\nextension, so it is only available with GHC 8.0 or later.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          ];
        };
      };
    }