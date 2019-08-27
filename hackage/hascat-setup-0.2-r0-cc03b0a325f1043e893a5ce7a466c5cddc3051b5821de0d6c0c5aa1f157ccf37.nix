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
      identifier = { name = "hascat-setup"; version = "0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Florian Micheler 2010";
      maintainer = "fmi@informatik.uni-kiel.de";
      author = "Florian Micheler";
      homepage = "";
      url = "";
      synopsis = "Hascat Installation helper";
      description = "This program installs  Hascat into a given folder";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hascat-lib" or (buildDepError "hascat-lib"))
          (hsPkgs."hascat-system" or (buildDepError "hascat-system"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."plugins" or (buildDepError "plugins"))
          ];
        };
      exes = {
        "hascat-setup" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hascat-lib" or (buildDepError "hascat-lib"))
            (hsPkgs."hascat-system" or (buildDepError "hascat-system"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."plugins" or (buildDepError "plugins"))
            ];
          };
        };
      };
    }