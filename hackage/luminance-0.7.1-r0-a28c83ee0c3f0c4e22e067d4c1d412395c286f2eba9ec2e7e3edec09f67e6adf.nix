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
      debug-gl = false;
      gl45 = false;
      gl45-bindless-textures = false;
      gl32 = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "luminance"; version = "0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "Dimitri Sabadie";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      homepage = "https://github.com/phaazon/luminance";
      url = "";
      synopsis = "Type-safe, type-level and stateless graphics framework";
      description = "This package exposes several modules to work with /GPUs/ in a stateless and\ntype-safe way. Currently, it uses OpenGL as backend hardware technology but\nothers will be added later on, such as Vulkan.\n\nOne very important point is the fact that luminance has nothing to do with\n/3D engines/ or /scene development kits/. Don’t expect to find /materials/,\n/lights/ or /mesh/ loaders. It’s just a graphics framework initiated to fix the\ndesign choices of OpenGL. It won’t change in any other way. However, as it\ngrows, the plan is to make luminance a good graphics framework following the\nHaskell philosophy. In the end, it should be used as-is, not as an OpenGL\nabstraction.\n\nluminance is a small yet powerful graphics API. It was designed so that\npeople can quickly get their feet wet and start having fun with graphics in\n/Haskell/. The main idea is to unleash the graphical and visual properties of\n/GPUs/ in a stateless and type-safe way.\n\nThis library doesn’t expose any architectural patterns or designs. It’s up to\nyou to design your program as you want and following your own plans.\n\nIn the end, as many people has asked me since the beginning of the development,\nthe OpenGL version – current is 4.5 – will be lowered. You’ll be able to choose\nthe backend to use through compilation flags.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."gl" or (buildDepError "gl"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."void" or (buildDepError "void"))
          ];
        };
      };
    }