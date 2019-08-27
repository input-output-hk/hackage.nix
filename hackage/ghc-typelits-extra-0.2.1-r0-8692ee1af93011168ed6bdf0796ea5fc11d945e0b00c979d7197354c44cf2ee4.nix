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
      identifier = { name = "ghc-typelits-extra"; version = "0.2.1"; };
      license = "BSD-2-Clause";
      copyright = "Copyright © 2015-2016 University of Twente";
      maintainer = "christiaan.baaij@gmail.com";
      author = "Christiaan Baaij";
      homepage = "http://www.clash-lang.org/";
      url = "";
      synopsis = "Additional type-level operations on GHC.TypeLits.Nat";
      description = "Additional type-level operations on @GHC.TypeLits.Nat@:\n\n* @Max@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:max max>\n\n* @Min@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:min min>\n\n* @Div@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:div div>\n\n* @Mod@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:mod mod>\n\n* @FLog@: type-level equivalent of <https://hackage.haskell.org/package/integer-gmp/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>\ni.e. the exact integer equivalent to @floor (logBase x y)@\n\n* @CLog@: type-level equivalent of /the ceiling of/ <https://hackage.haskell.org/package/integer-gmp/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>\ni.e. the exact integer equivalent to @ceiling (logBase x y)@\n\n* @Log@: type-level equivalent of <https://hackage.haskell.org/package/integer-gmp/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>\nwhere the operation only reduces when @floor (logBase b x) ~ ceiling (logBase b x)@\n\n* @GCD@: a type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:gcd gcd>\n\n* @LCM@: a type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:lcm lcm>\n\nAnd a custom solver for the above operations defined in\n@GHC.TypeLits.Extra.Solver@ as a GHC type-checker plugin. To use the plugin,\nadd the\n\n@\nOPTIONS_GHC -fplugin GHC.TypeLits.Extra.Solver\n@\n\npragma to the header of your file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghc-tcplugins-extra" or (buildDepError "ghc-tcplugins-extra"))
          (hsPkgs."ghc-typelits-knownnat" or (buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or (buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."integer-gmp" or (buildDepError "integer-gmp"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      tests = {
        "test-ghc-typelits-extra" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc-typelits-extra" or (buildDepError "ghc-typelits-extra"))
            (hsPkgs."ghc-typelits-knownnat" or (buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."ghc-typelits-natnormalise" or (buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ];
          };
        };
      };
    }