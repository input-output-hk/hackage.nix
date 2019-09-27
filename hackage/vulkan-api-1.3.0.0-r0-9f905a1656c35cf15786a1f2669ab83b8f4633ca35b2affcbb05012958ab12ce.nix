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
    flags = {
      useunsafeffidefault = false;
      useplatformandroidkhr = false;
      useplatformiosmvk = false;
      useplatformmacosmvk = false;
      useplatformmirkhr = false;
      useplatformvinn = false;
      useplatformwaylandkhr = false;
      useplatformwin32khr = false;
      useplatformxcbkhr = false;
      useplatformxlibkhr = false;
      useplatformxlibxrandrext = false;
      usenativeffi-1-0 = false;
      usenativeffi-1-1 = false;
      };
    package = {
      specVersion = "1.22";
      identifier = { name = "vulkan-api"; version = "1.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Artem Chirkin";
      maintainer = "chirkin@arch.ethz.ch";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/vulkan#readme";
      url = "";
      synopsis = "Low-level low-overhead vulkan api bindings";
      description = "Haskell bindings for vulkan api as described in vk.xml.\n\nYou can find some simple examples at <https://github.com/achirkin/vulkan/tree/master/vulkan-examples vulkan-examples> page\nor a more complete triangle rendering program at <https://github.com/achirkin/vulkan/tree/master/vulkan-triangles vulkan-triangles> page.\n\nFor further information, please refer to <https://github.com/achirkin/vulkan#readme README.md>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        libs = (pkgs.lib).optionals (flags.usenativeffi-1-0 || flags.usenativeffi-1-1) (((pkgs.lib).optional (system.isWindows) (pkgs."vulkan-1" or (sysDepError "vulkan-1")) ++ (pkgs.lib).optional (system.isOsx) (pkgs."vulkan" or (sysDepError "vulkan"))) ++ (pkgs.lib).optional (!system.isWindows && !system.isOsx) (pkgs."vulkan" or (sysDepError "vulkan")));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }