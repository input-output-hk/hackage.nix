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
      identifier = { name = "time-interval"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/time-interval/";
      url = "";
      synopsis = "Use a time unit class, but hold a concrete time type.";
      description = "Two common ways to represent and hold short time intervals seem to be:\n\n1. Hold time in microseconds as an 'Int' or 'Integer'\n2. Use time units abstraction, e.g. see the time-units package\n\nWhile the second option is a great abstraction to use in APIs, it works for\ndatatypes a bit less well than for function types. That's because a datatype\nwhich a 'Data.Time.Units.TimeUnit' field suddenly becomes polymorphic over\nthat field, and all function type signatures involving that datatype need to\nbe updated. This is less an issue for functions, because you don't specify\nthe type of every function at the call site.\n\nPerhaps there is a solution for that which involves datatype related\nlanguage extensions, but this package tries to offer a simple clean solution\nas follows. You store time in your datatype as an integer, but it is wrapped\nby an opaque 'Data.Time.Interval.TimeInterval' type. You then get the best of\nboth worlds:\n\n* On one hand, you can set the time field using any time unit thanks to the\ntime-units package, so you get a nice abstraction\n\n* On the other hand, your datatype holds a concrete time type\n\nThe time type can be equally used to represent time intervals, time durations\nand generally time lengths. But since high precision is used (microseconds),\nyou'll probably want this library for short time lengths (at most seconds,\nminutes, hours). For calendar based and related time functions and types, see\nthe @time@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."time-units" or (buildDepError "time-units"))
          ];
        };
      };
    }