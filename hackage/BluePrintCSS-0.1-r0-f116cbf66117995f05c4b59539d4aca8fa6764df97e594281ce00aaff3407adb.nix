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
    flags = { hsx = false; blaze = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "BluePrintCSS"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sergey Mironov <ierton@gmail.com>";
      author = "Sergey Mironov";
      homepage = "http://git.ierton.ru/?p=BluePrint.git;a=summary";
      url = "";
      synopsis = "Html document layout library.";
      description = "The library helps to format html documents using popular BluePrint CSS framework <http://www.blueprintcss.org/>. Currently, Blaze and HSX html generators are supported (note 'blaze' and 'hsx' flags). See repository for complex examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ] ++ (pkgs.lib).optional (flags.blaze) (hsPkgs."blaze-html" or (buildDepError "blaze-html"))) ++ (pkgs.lib).optional (flags.hsx) (hsPkgs."hsx" or (buildDepError "hsx"));
        buildable = true;
        };
      };
    }