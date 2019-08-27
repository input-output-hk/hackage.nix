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
      specVersion = "1.2";
      identifier = { name = "invertible-syntax"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rendel@informatik.uni-marburg.de";
      author = "Tillmann Rendel";
      homepage = "http://www.informatik.uni-marburg.de/~rendel/unparse";
      url = "";
      synopsis = "Invertible syntax descriptions for both parsing and pretty printing.";
      description = "Invertible syntax descriptions as a common\ninterface for parser combinator and pretty\nprinting libraries, as described in the paper:\n\nTillmann Rendel and Klaus Ostermann.\nInvertible Syntax Descriptions:\nUnifying Parsing and Pretty Printing.\nIn /Proc. of Haskell Symposium/, 2010.\n\nThe distribution contains a file\n/Example.lhs/ with the example grammar from\nthe paper.\n\nThe paper also describes partial isomorphisms.\nThese are distributed separately in the\n/partial-isomorphism/ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."partial-isomorphisms" or (buildDepError "partial-isomorphisms"))
          ];
        };
      };
    }