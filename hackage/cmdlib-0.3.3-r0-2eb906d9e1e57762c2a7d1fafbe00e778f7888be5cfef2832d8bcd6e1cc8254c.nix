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
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "cmdlib"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@mornfall.net";
      author = "Petr Rockai";
      homepage = "";
      url = "";
      synopsis = "a library for command line parsing & online help";
      description = "A commandline parsing library, based on getopt. Comes with a\npowerful attribute system. Supports complex interfaces with many\noptions and commands, with option & command grouping, with simple\nand convenient API. Even though quite powerful, it strives to keep\nsimple things simple. The library uses \"System.Console.GetOpt\" as\nits backend.\n\nIn comparison to the other commandline handling libraries:\n\nCompared to cmdargs, cmdlib has a pure attribute system and is\nbased on GetOpt for help formatting & argument parsing. Cmdlib may\nalso be more extendable due to typeclass design, and can use\nuser-supplied types for option arguments.\n\nCmdargs >= 0.4 can optionally use a pure attribute system,\nalthough this is clearly an add-on and the API is a second-class\ncitizen in relation to the impure version.\n\nGetOpt and parseargs both require explicit flag representation, so\nthey live a level below cmdlib. GetOpt is in fact used as a\nbackend by cmdlib.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."split" or (buildDepError "split"))
          ];
        buildable = true;
        };
      exes = {
        "cmdlib-test" = { buildable = if !flags.test then false else true; };
        "cmdlib-rectest" = { buildable = if !flags.test then false else true; };
        };
      };
    }