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
      specVersion = "1.2.3";
      identifier = { name = "terrahs"; version = "0.9"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Nick Rudnick <nick.rudnick@googlemail.com>";
      author = "Sergio Costa <skosta@gmail.com>";
      homepage = "http://lucc.ess.inpe.br/doku.php?id=terrahs";
      url = "";
      synopsis = "A Haskell GIS Programming Environment";
      description = "We have developed TerraHS, a software component that enables the development of geographical applications in a functional language, using the data handling capabilities of TerraLib. TerraLib is a C++ library that supports different spatial database management systems, and that includes a large number of spatial algorithms. As a result, we get a combination of the good features of both programming paradigms.\nMore info on package and its features at <http://www.haskell.org/haskellwiki/TerraHS>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        libs = [
          (pkgs."terralib4c" or (sysDepError "terralib4c"))
          (pkgs."translib" or (sysDepError "translib"))
          ];
        };
      };
    }