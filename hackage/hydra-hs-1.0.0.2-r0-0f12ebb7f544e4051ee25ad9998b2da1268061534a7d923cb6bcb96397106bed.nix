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
    flags = { usepkgconfig = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hydra-hs"; version = "1.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "github@dustlab.com";
      author = "Marcel Ruegenberg";
      homepage = "https://github.com/mruegenberg/hydra-hs";
      url = "";
      synopsis = "Haskell binding to the Sixense SDK for the Razer Hydra";
      description = "Bindings to the Sixense SDK for the Razer Hydra.\nTo get started, get the SDK from Sixense (http://sixense.com/developers), install it, then install hydra.hs.\nThe install script that comes with the SDK might not always work.\nTo build hydra-hs, you need both sixense.h and libsixense.dylib in a location where they can be found (such as /usr/local/include and /usr/local/lib).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          ];
        libs = if !system.isX86_64
          then (pkgs.lib).optional (!flags.usepkgconfig) (pkgs."sixense" or (sysDepError "sixense"))
          else (pkgs.lib).optional (!flags.usepkgconfig) (pkgs."sixense_x64" or (sysDepError "sixense_x64"));
        pkgconfig = if !system.isX86_64
          then (pkgs.lib).optional (flags.usepkgconfig) (pkgconfPkgs."libsixense" or (pkgConfDepError "libsixense"))
          else (pkgs.lib).optional (flags.usepkgconfig) (pkgconfPkgs."libsixense_x64" or (pkgConfDepError "libsixense_x64"));
        };
      tests = {
        "hydra-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hydra-hs" or (buildDepError "hydra-hs"))
            ];
          };
        };
      };
    }