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
      identifier = { name = "HRay"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "boegel <kenneth [dot] hoste [at] elis [dot] ugent [dot] be>";
      author = "boegel";
      homepage = "http://trappist.elis.ugent.be/~kehoste/Haskell/HRay/";
      url = "";
      synopsis = "Haskell raytracer";
      description = "HRay is a ray tracing application written in Haskell as part of my\nthesis at Ghent University. It's quite simple for now, but I'll probably\nkeep on working on it in the near future.\n\nFor more information, see the homepage or the Haskell wiki entry:\n<http://haskell.org/haskellwiki/HRay>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "HRay" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            ];
          };
        };
      };
    }