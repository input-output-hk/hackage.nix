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
      specVersion = "1.6";
      identifier = { name = "assimp"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Joel Burget 2011";
      maintainer = "joelburget@gmail.com";
      author = "Joel Burget";
      homepage = "";
      url = "";
      synopsis = "The Assimp asset import library";
      description = "Important: Install with\n@cabal install --extra-include-dirs \\/usr\\/local\\/include\\/assimp\\/@\nOf course use the location of the include files on your system.\n\nThis library provides FFI bindings to the Assimp asset import\nlibrary. It requires Assimp to already be installed. For more\ninformation about Assimp see the assimp website at\n<http://assimp.sourceforge.net/>.\n\nThis release corresponds to Assimp 2.0. When this package stabilizes I\nintend to track new releases of Assimp by also releasing new versions with\nthe same version number, but this should be considered a beta release.\nImporting models is currently working. Textures and animations are\nuntested.\n\nHere is a sample program that imports a scene and then outputs the\ninformation contained in it.\n\n> module Main where\n>\n> import System (getArgs)\n> import Graphics.Formats.Assimp\n>\n> -- Defines the preprocessing we want assimp to perform\n> processing = [ CalcTangentSpace\n>              , Triangulate\n>              , JoinIdenticalVertices\n>              , SortByPType\n>              ]\n>\n> main = do\n>   args <- getArgs\n>   scene <- importFile (head args) processing\n>   print scene                   -- Outputs all information in the scene\n>   getVersionMajor >>= print     -- Print the major version of assimp\n>   getVersionMinor >>= print     -- Print the minor version of assimp\n>   getVersionRevision >>= print  -- Print the version revision of assimp\n\nSee <https://github.com/joelburget/Cologne/blob/master/Cologne/AssimpImport.hs>\nfor more.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."vect" or (buildDepError "vect"))
          ];
        libs = [ (pkgs."assimp" or (sysDepError "assimp")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        };
      };
    }