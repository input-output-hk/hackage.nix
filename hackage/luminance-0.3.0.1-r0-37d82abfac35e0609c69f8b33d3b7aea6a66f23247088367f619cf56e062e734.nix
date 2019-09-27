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
    flags = { debug-gl = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "luminance"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Dimitri Sabadie";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      homepage = "https://github.com/phaazon/luminance";
      url = "";
      synopsis = "Type-safe, dependently-typed and stateless graphics framework";
      description = "This package exposes several modules to work with /GPUs/ in a stateless and\ntype-safe way. Currently, it uses __OpenGL__ as backend hardware technology but\nothers will be added later on, such as __Vulkan__.\n\nThe initial unstable version is /0.1/. Consider everything in that version as\npart of an experiment, even though the library should be free of bugs. If you\nfind any, please report an issue. If you think something could be enhanced,\nfeel free to fill in an issue as well.\n\nOne very important point is the fact that __luminance__ has nothing to do with\n/3D engines/ or /scene development kits/. Don’t expect to find /materials/,\n/lights/ or /mesh/ loaders. It’s just a graphics framework initiated to fix the\ndesign choices of __OpenGL__. It won’t change in any other way.\n\n__luminance__ is a small yet powerful graphics API. It was designed so that\npeople can quickly get their feet wet and start having fun with graphics in\n/Haskell/. The main idea is to unleash the graphical and visual properties of\n/GPUs/ in a stateless and type-safe way.\n\nThis library doesn’t expose any architectural patterns or designs. It’s up to\nyou to design your program as you want and following your own plans.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."gl" or (buildDepError "gl"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."void" or (buildDepError "void"))
          ];
        buildable = true;
        };
      };
    }