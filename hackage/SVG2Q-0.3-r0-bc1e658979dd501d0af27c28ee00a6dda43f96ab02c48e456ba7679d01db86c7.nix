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
      identifier = { name = "SVG2Q"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jan Greve";
      author = "Jan Greve";
      homepage = "http://www.informatik.uni-kiel.de/~jgr/svg2q";
      url = "";
      synopsis = "Code generation tool for Quartz code from a SVG.";
      description = "svg2q will generate a Objective C Class from a SVG file which shows the SVG. The Class offers methods to set attributes of those SVG elements that have ids.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "svg2q" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."svgutils" or (buildDepError "svgutils"))
            (hsPkgs."language-c" or (buildDepError "language-c"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }