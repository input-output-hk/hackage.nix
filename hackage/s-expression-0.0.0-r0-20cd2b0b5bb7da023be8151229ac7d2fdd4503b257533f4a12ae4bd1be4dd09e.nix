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
      identifier = { name = "s-expression"; version = "0.0.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2015 Spiros M. Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "https://github.com/sboosali/s-expression#readme";
      url = "";
      synopsis = "simple general-purpose s-expressions";
      description = "this package provides general-purpose functionality for manipulating s-expressions. like:\n\n* a @Functor@ instance that transforms the atoms\n\n* a @Monad@ instance that \"expands\" atoms into s-expressions\n\n* a @Foldable@ instance that enumerates the atoms (leaves)\n\n* @IsList@ and @IsString@ instances for literal syntax\n\n*\n\n*\n\n*\n\nthe core type is:\n\n@\ndata <https://hackage.haskell.org/package/s-expression/docs//Data-Sexp.html Sexp> f a\n= Atom a\n| List   [Sexp f a]\n| Sexp f [Sexp f a]\n@\n\nwhich lets you provide your own custom function name that interprets its arguments.\n\ne.g. TODO\n\nfor efficient parsing/printing, use:\n\n* https://hackage.haskell.org/package/sexp\n\n* https://hackage.haskell.org/package/atto-lisp\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."derive-monoid" or (buildDepError "derive-monoid"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          ];
        buildable = true;
        };
      exes = {
        "example-s-expressions" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."s-expression" or (buildDepError "s-expression"))
            ];
          buildable = true;
          };
        };
      };
    }