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
    flags = { deverror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-typelits-knownnat"; version = "0.1.1"; };
      license = "BSD-2-Clause";
      copyright = "Copyright © 2016 University of Twente";
      maintainer = "christiaan.baaij@gmail.com";
      author = "Christiaan Baaij";
      homepage = "http://clash-lang.org/";
      url = "";
      synopsis = "Derive KnownNat constraints from other KnownNat constraints";
      description = "A type checker plugin for GHC that can derive \\\"complex\\\" @KnownNat@\nconstraints from other simple/variable @KnownNat@ constraints. i.e. without\nthis plugin, you must have both a @KnownNat n@ and a @KnownNat (n+2)@\nconstraint in the type signature of the following function:\n\n@\nf :: forall n . (KnownNat n, KnownNat (n+2)) => Proxy n -> Integer\nf _ = natVal (Proxy :: Proxy n) + natVal (Proxy :: Proxy (n+2))\n@\n\nUsing the plugin you can omit the @KnownNat (n+2)@ constraint:\n\n@\nf :: forall n . KnownNat n => Proxy n -> Integer\nf _ = natVal (Proxy :: Proxy n) + natVal (Proxy :: Proxy (n+2))\n@\n\nThe plugin can only derive @KnownNat@ constraints consisting of:\n\n* Type-level naturals\n\n* Type variables\n\n* Applications of the arithmetic expression: +,*,^\n\ni.e. it /cannot/ derive a @KnownNat (n-1)@ constraint from a @KnownNat n@\nconstraint\n\nTo use the plugin, add the\n\n@\nOPTIONS_GHC -fplugin GHC.TypeLits.KnownNat.Solver\n@\n\nPragma to the header of your file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghc-tcplugins-extra" or (buildDepError "ghc-tcplugins-extra"))
          ];
        };
      tests = {
        "test-ghc-typelits-knownat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc-typelits-knownnat" or (buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          };
        };
      };
    }