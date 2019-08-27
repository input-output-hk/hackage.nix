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
      specVersion = "1.8";
      identifier = { name = "GPipe"; version = "1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Tobias Bexelius";
      maintainer = "Tobias Bexelius";
      author = "Tobias Bexelius";
      homepage = "http://www.haskell.org/haskellwiki/GPipe";
      url = "http://hackage.haskell.org/package/GPipe";
      synopsis = "A functional graphics API for programmable GPUs";
      description = "GPipe models the entire graphics pipeline in a purely functional, immutable and typesafe way. It is built on top of the programmable pipeline (i.e. non-fixed function) of\nOpenGL 2.1 and uses features such as vertex buffer objects (VBO's), texture objects and GLSL shader code synthetisation to create fast graphics programs. Buffers,\ntextures and shaders are cached internally to ensure fast framerate, and GPipe is also capable of managing multiple windows and contexts. By creating your own\ninstances of GPipes classes, it's possible to use additional datatypes on the GPU.\n\nYou'll need full OpenGL 2.1 support, including GLSL 1.20 to use GPipe. Thanks to OpenGLRaw, you may still build GPipe programs on machines lacking this support.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."list-tries" or (buildDepError "list-tries"))
          (hsPkgs."GLUT" or (buildDepError "GLUT"))
          (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
          (hsPkgs."Boolean" or (buildDepError "Boolean"))
          (hsPkgs."Vec" or (buildDepError "Vec"))
          (hsPkgs."Vec-Boolean" or (buildDepError "Vec-Boolean"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      };
    }