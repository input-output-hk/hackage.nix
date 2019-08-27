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
      identifier = { name = "pipes-zeromq4"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Matthew Peddie";
      maintainer = "Matthew Peddie <mpeddie@gmail.com>";
      author = "Matthew Peddie <mpeddie@gmail.com>";
      homepage = "http://github.com/peddie/pipes-zeromq4";
      url = "";
      synopsis = "Pipes integration for ZeroMQ messaging";
      description = "<https://hackage.haskell.org/package/pipes Pipes> integration for\n<http://zeromq.org/ ZeroMQ> using the\n<https://hackage.haskell.org/package/zeromq4-haskell zeromq4-haskell bindings>.\n\nThis package is very basic.  I am new to the @Pipes@ family of APIs\nand would be overjoyed to receive feedback.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
          ];
        };
      exes = {
        "proxy" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pipes-zeromq4" or (buildDepError "pipes-zeromq4"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "client" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pipes-zeromq4" or (buildDepError "pipes-zeromq4"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            ];
          };
        "server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pipes-zeromq4" or (buildDepError "pipes-zeromq4"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            ];
          };
        };
      };
    }