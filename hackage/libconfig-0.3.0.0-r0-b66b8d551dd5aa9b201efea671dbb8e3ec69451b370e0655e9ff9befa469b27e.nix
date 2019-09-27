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
    flags = { prisms = true; binary = true; cereal = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "libconfig"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Matthew Peddie <mpeddie@gmail.com>";
      maintainer = "mpeddie@gmail.com";
      author = "Matthew Peddie";
      homepage = "https://github.com/peddie/libconfig-haskell";
      url = "";
      synopsis = "Haskell bindings to libconfig";
      description = "Low-level FFI bindings to the <http://www.hyperrealm.com/libconfig/ libconfig>\nconfiguration file library.\n\nThis library only binds to version 1.4.9 of the libconfig\nlibrary, which is known as @libconfig9@ in Debian-like\ndistributions, including Ubuntu.  It will not work with\nolder versions of libconfig, including the @libconfig8@\ndistributed in Ubuntu 12.04.\n\nSee below for several flags you can use to reduce\ndependencies if this is a problem for you.  If you disable\neverything, this package will only depend on\n@transformers@, @text@, @hashable@ and @deepseq@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.prisms && flags.binary && flags.cereal
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."text-binary" or (buildDepError "text-binary"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."cereal-text" or (buildDepError "cereal-text"))
            ]
          else if flags.prisms && flags.binary
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."text" or (buildDepError "text"))
              (hsPkgs."hashable" or (buildDepError "hashable"))
              (hsPkgs."deepseq" or (buildDepError "deepseq"))
              (hsPkgs."transformers" or (buildDepError "transformers"))
              (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
              (hsPkgs."profunctors" or (buildDepError "profunctors"))
              (hsPkgs."binary" or (buildDepError "binary"))
              (hsPkgs."text-binary" or (buildDepError "text-binary"))
              ]
            else if flags.prisms && flags.cereal
              then [
                (hsPkgs."base" or (buildDepError "base"))
                (hsPkgs."text" or (buildDepError "text"))
                (hsPkgs."hashable" or (buildDepError "hashable"))
                (hsPkgs."deepseq" or (buildDepError "deepseq"))
                (hsPkgs."transformers" or (buildDepError "transformers"))
                (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
                (hsPkgs."profunctors" or (buildDepError "profunctors"))
                (hsPkgs."cereal" or (buildDepError "cereal"))
                (hsPkgs."cereal-text" or (buildDepError "cereal-text"))
                ]
              else if flags.binary && flags.cereal
                then [
                  (hsPkgs."base" or (buildDepError "base"))
                  (hsPkgs."text" or (buildDepError "text"))
                  (hsPkgs."hashable" or (buildDepError "hashable"))
                  (hsPkgs."deepseq" or (buildDepError "deepseq"))
                  (hsPkgs."transformers" or (buildDepError "transformers"))
                  (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
                  (hsPkgs."binary" or (buildDepError "binary"))
                  (hsPkgs."text-binary" or (buildDepError "text-binary"))
                  (hsPkgs."cereal" or (buildDepError "cereal"))
                  (hsPkgs."cereal-text" or (buildDepError "cereal-text"))
                  ]
                else if flags.prisms
                  then [
                    (hsPkgs."base" or (buildDepError "base"))
                    (hsPkgs."text" or (buildDepError "text"))
                    (hsPkgs."hashable" or (buildDepError "hashable"))
                    (hsPkgs."deepseq" or (buildDepError "deepseq"))
                    (hsPkgs."transformers" or (buildDepError "transformers"))
                    (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
                    (hsPkgs."profunctors" or (buildDepError "profunctors"))
                    ]
                  else if flags.binary
                    then [
                      (hsPkgs."base" or (buildDepError "base"))
                      (hsPkgs."text" or (buildDepError "text"))
                      (hsPkgs."hashable" or (buildDepError "hashable"))
                      (hsPkgs."deepseq" or (buildDepError "deepseq"))
                      (hsPkgs."transformers" or (buildDepError "transformers"))
                      (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
                      (hsPkgs."binary" or (buildDepError "binary"))
                      (hsPkgs."text-binary" or (buildDepError "text-binary"))
                      ]
                    else if flags.cereal
                      then [
                        (hsPkgs."base" or (buildDepError "base"))
                        (hsPkgs."text" or (buildDepError "text"))
                        (hsPkgs."hashable" or (buildDepError "hashable"))
                        (hsPkgs."deepseq" or (buildDepError "deepseq"))
                        (hsPkgs."transformers" or (buildDepError "transformers"))
                        (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
                        (hsPkgs."cereal" or (buildDepError "cereal"))
                        (hsPkgs."cereal-text" or (buildDepError "cereal-text"))
                        ]
                      else [
                        (hsPkgs."base" or (buildDepError "base"))
                        (hsPkgs."text" or (buildDepError "text"))
                        (hsPkgs."hashable" or (buildDepError "hashable"))
                        (hsPkgs."deepseq" or (buildDepError "deepseq"))
                        (hsPkgs."transformers" or (buildDepError "transformers"))
                        (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
                        ];
        libs = [ (pkgs."config" or (sysDepError "config")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = if flags.prisms
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."libconfig" or (buildDepError "libconfig"))
              (hsPkgs."doctest" or (buildDepError "doctest"))
              (hsPkgs."doctest-prop" or (buildDepError "doctest-prop"))
              (hsPkgs."lens" or (buildDepError "lens"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."libconfig" or (buildDepError "libconfig"))
              (hsPkgs."doctest" or (buildDepError "doctest"))
              (hsPkgs."doctest-prop" or (buildDepError "doctest-prop"))
              ];
          buildable = true;
          };
        };
      };
    }