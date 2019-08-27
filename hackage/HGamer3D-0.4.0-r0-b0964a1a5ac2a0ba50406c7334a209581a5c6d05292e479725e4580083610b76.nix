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
    flags = { audio = true; network = true; inputsystem = true; };
    package = {
      specVersion = "1.4";
      identifier = { name = "HGamer3D"; version = "0.4.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "A Game Engine for the Haskell Programmer";
      description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. The game engine uses available libraries for 3D graphics,\nsound, input device handling, gui programming and other areas and make\nthose functions available for the Haskell programmer by providing\na Haskell API on top of that. HGamer3D is available on Windows and Linux.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."clock" or (buildDepError "clock"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."hashtables" or (buildDepError "hashtables"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."HGamer3D-Data" or (buildDepError "HGamer3D-Data"))
          (hsPkgs."HGamer3D-Graphics3D" or (buildDepError "HGamer3D-Graphics3D"))
          (hsPkgs."HGamer3D-WinEvent" or (buildDepError "HGamer3D-WinEvent"))
          (hsPkgs."HGamer3D-GUI" or (buildDepError "HGamer3D-GUI"))
          ] ++ (pkgs.lib).optional (flags.audio) (hsPkgs."HGamer3D-Audio" or (buildDepError "HGamer3D-Audio"))) ++ (pkgs.lib).optional (flags.network) (hsPkgs."HGamer3D-Network" or (buildDepError "HGamer3D-Network"))) ++ (pkgs.lib).optional (flags.inputsystem) (hsPkgs."HGamer3D-InputSystem" or (buildDepError "HGamer3D-InputSystem"));
        };
      };
    }