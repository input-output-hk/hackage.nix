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
    flags = { containers-in-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "AERN-Real"; version = "0.9.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2008 Michal Konecny, Amin Farjudian, Jan Duracz";
      maintainer = "Michal Konecny";
      author = "Michal Konecny";
      homepage = "";
      url = "";
      synopsis = "datatypes and abstractions for approximating exact real numbers";
      description = "Datatypes and abstractions for approximating exact real numbers\nand a basic arithmetic over such approximations.  The design is\ninspired to some degree by Mueller's iRRAM and Lambov's RealLib\n(both are C++ libraries for exact real arithmetic).\n\nAbstractions are provided via 4 type classes:\n\n* ERRealBase: abstracts floating point numbers\n\n* ERApprox: abstracts neighbourhoods of real numbers\n\n* ERIntApprox: abstracts neighbourhoods of real numbers that are known to be intervals\n\n* ERApproxElementary: abstracts real number approximations that support elementary operations\n\nFor ERRealBase we give several implementations.  The default is\nan arbitrary precision floating point type that uses Double\nfor lower precisions and an Integer-based simulation for higher\nprecisions.  Rational numbers can be used as one of the alternatives.\nAugustsson's Data.Number.BigFloat can be easily wrapped as an instance\nof ERRealBase except that it uses a different method to control precision.\n\nERIntApprox is implemented via outwards-rounded arbitrary precision interval arithmetic.\nAny instance of ERRealBase can be used for the endpoints of the intervals.\n\nERApproxElementary is implemented generically for any implementation\nof ERIntApprox.  This way some of the most common elementary operations are provided,\nnotably: sqrt, exp, log, sin, cos, atan.  These operations converge\nto an arbitrary precision and also work well over larger intervals without\nexcessive wrapping.\n\nThere is also some support for generic Taylor series, interval Newton method\nand simple numerical integration.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.containers-in-base
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."binary" or (buildDepError "binary"))
            ];
        buildable = true;
        };
      };
    }