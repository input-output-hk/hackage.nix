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
      specVersion = "1.2.1";
      identifier = { name = "xformat"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Sean Leather";
      maintainer = "leather@cs.uu.nl";
      author = "Sean Leather";
      homepage = "http://github.com/spl/xformat";
      url = "";
      synopsis = "Extensible, type-safe formatting with scanf- and printf-like functions";
      description = "/Warning:/ This version of the package is very experimental and the interface\nmay change in later versions. I am seeking comments to improve it.\n\nThis package is composed of two functions for formatted conversion between\nstrings and typed values. Each is defined as a type-indexed function using a\ntype class with multiple parameters and functional dependencies along with\nformat descriptors.\n\n\"Text.XFormat.Read\" allows one to parse values from a formatted string. Its\nfunctionality is similar to the C @scanf@ function. Unlike @scanf@, however,\nthe format descriptor is well-typed, ensuring that the output type is\nstatically known.\n\n\"Text.XFormat.Show\" allows one to print values to a formatted string. Its\nfunctionality is similar to the C @printf@ function. Unlike @printf@, however,\nthe format descriptor is well-typed, ensuring that the variable number\narguments are statically known.\n\nThese functions can be easily extended to support new formats and new types.\nExtension is simple: define a format descriptor and an instance of the\nappropriate class.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      };
    }