{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
            (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."text-binary" or ((hsPkgs.pkgs-errors).buildDepError "text-binary"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."cereal-text" or ((hsPkgs.pkgs-errors).buildDepError "cereal-text"))
            ]
          else if flags.prisms && flags.binary
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
              (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
              (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
              (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
              (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
              (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
              (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
              (hsPkgs."text-binary" or ((hsPkgs.pkgs-errors).buildDepError "text-binary"))
              ]
            else if flags.prisms && flags.cereal
              then [
                (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
                (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
                (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
                (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
                (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
                (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
                (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
                (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
                (hsPkgs."cereal-text" or ((hsPkgs.pkgs-errors).buildDepError "cereal-text"))
                ]
              else if flags.binary && flags.cereal
                then [
                  (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
                  (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
                  (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
                  (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
                  (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
                  (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
                  (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
                  (hsPkgs."text-binary" or ((hsPkgs.pkgs-errors).buildDepError "text-binary"))
                  (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
                  (hsPkgs."cereal-text" or ((hsPkgs.pkgs-errors).buildDepError "cereal-text"))
                  ]
                else if flags.prisms
                  then [
                    (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
                    (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
                    (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
                    (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
                    (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
                    (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
                    (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
                    ]
                  else if flags.binary
                    then [
                      (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
                      (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
                      (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
                      (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
                      (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
                      (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
                      (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
                      (hsPkgs."text-binary" or ((hsPkgs.pkgs-errors).buildDepError "text-binary"))
                      ]
                    else if flags.cereal
                      then [
                        (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
                        (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
                        (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
                        (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
                        (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
                        (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
                        (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
                        (hsPkgs."cereal-text" or ((hsPkgs.pkgs-errors).buildDepError "cereal-text"))
                        ]
                      else [
                        (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
                        (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
                        (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
                        (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
                        (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
                        (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
                        ];
        libs = [
          (pkgs."config" or ((hsPkgs.pkgs-errors).sysDepError "config"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = if flags.prisms
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."libconfig" or ((hsPkgs.pkgs-errors).buildDepError "libconfig"))
              (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
              (hsPkgs."doctest-prop" or ((hsPkgs.pkgs-errors).buildDepError "doctest-prop"))
              (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."libconfig" or ((hsPkgs.pkgs-errors).buildDepError "libconfig"))
              (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
              (hsPkgs."doctest-prop" or ((hsPkgs.pkgs-errors).buildDepError "doctest-prop"))
              ];
          buildable = true;
          };
        };
      };
    }