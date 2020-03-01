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
    flags = { buildsampleprograms = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "nonlinear-optimization-ad"; version = "0.2.4"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2013 Masahiro Sakai";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "https://github.com/msakai/nonlinear-optimization-ad";
      url = "";
      synopsis = "Wrapper of nonlinear-optimization package for using with AD package";
      description = "This package enhances\n<https://hackage.haskell.org/package/nonlinear-optimization nonlinear-optimization>'s\nusability by using\n<https://hackage.haskell.org/package/ad ad>'s\nautomatic differentiation. You only need to\nspecify a function to minimize and don't need to\nspecify its gradient explicitly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."nonlinear-optimization" or (buildDepError "nonlinear-optimization"))
          (hsPkgs."ad" or (buildDepError "ad"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          ];
        buildable = true;
        };
      exes = {
        "LinearRegression" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."nonlinear-optimization-ad" or (buildDepError "nonlinear-optimization-ad"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = if !flags.buildsampleprograms then false else true;
          };
        };
      };
    }