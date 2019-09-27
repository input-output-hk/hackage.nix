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
      specVersion = "0";
      identifier = { name = "hsx"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Niklas Broberg <nibro@cs.chalmers.se>";
      author = "Niklas Broberg, Joel Björnson";
      homepage = "http://code.google.com/hsp";
      url = "";
      synopsis = "HSX (Haskell Source with XML) allows literal XML syntax to be used in Haskell source code.";
      description = "HSX (Haskell Source with XML) allows literal XML syntax to be used in Haskell source code.\nThe trhsx preprocessor translates .hsx source files into ordinary .hs files. Literal\nXML syntax is translated into function calls for creating XML values of the appropriate\nforms.\ntrhsx transforms literal XML syntax into a series of function calls. Any project\ncan make use of the syntax by providing definitions for those functions, and the\nXML values produced will be of the types specified. This works for any types, since\ntrhsx doesn't make any assumptions, or inserts any information depending on types.\nXMLGenerator defines a few typeclasses that together cover the functions injected by the\npreprocessor. A project that uses these classes to provide the semantics for the injected\nsyntax will be able to use any functions written in terms of these, allowing better code\nreusability than if each project defines its own semantics for the XML syntax. Also, the classes\nmakes it possible to use the literal syntax at different types within the same module.\nAchieving that is not as simple as it may seem, but the XMLGenerator module provides all the\nnecessary machinery.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
          ];
        buildable = true;
        };
      exes = {
        "trhsx" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            ];
          buildable = true;
          };
        };
      };
    }