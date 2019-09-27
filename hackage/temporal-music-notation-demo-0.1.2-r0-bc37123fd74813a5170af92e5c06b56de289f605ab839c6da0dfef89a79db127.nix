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
      specVersion = "1.2";
      identifier = {
        name = "temporal-music-notation-demo";
        version = "0.1.2";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Anton Kholomiov";
      author = "Anton Kholomiov";
      homepage = "";
      url = "";
      synopsis = "Library: generates midi from score notation.";
      description = "Library for playing scores made with 'temporal-music-notation'\nvia midi. It binds 'temporal-media-notation' and 'HCodecs'\npackages. Features composable score representation and\nmicrosound composition. It relies on\nMidi Tuning Standart (MTS) so it's better to listen results\nwith TiMidity or another soft that undestands MTS.\nExamples can be found source directory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."temporal-music-notation" or (buildDepError "temporal-music-notation"))
          (hsPkgs."HCodecs" or (buildDepError "HCodecs"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."cmath" or (buildDepError "cmath"))
          ];
        buildable = true;
        };
      };
    }