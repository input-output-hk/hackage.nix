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
      specVersion = "1.6";
      identifier = { name = "uu-tc"; version = "2009.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jurriën Stutterheim <j.stutterheim@uu.nl>";
      author = "Andres Loeh <andres@cs.uu.nl>,\nJohan Jeuring <johanj@cs.uu.nl>,\nDoaitse Swierstra <doaitse@cs.uu.nl>";
      homepage = "";
      url = "";
      synopsis = "Haskell 98 parser combintors for INFOB3TC at Utrecht University";
      description = "Course software for INFOB3TC (Languages & Compilers)\n\nThis library currently contains three Haskell 98 parser combinator libraries.\n\n* The default library, available as @ParseLib@ or more explicitly\nby importing @ParseLib.Simple@, is the one described in the\nlecture notes, using a type synonym as the type for parsers.\n\n* The second library can be chosen by importing @ParseLib.Abstract@.\nIt defines the same functions as @ParseLib.Simple@, but keeps\nthe parser type abstract.\n* The third library is an implementation of Koen Claessen's\n/Parallel Parsing Processes/, available as @ParseLib.Parallel@.\n\nIn future versions of this package, more libraries with more\nadvanced implementations of parser combinators may be added.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      };
    }