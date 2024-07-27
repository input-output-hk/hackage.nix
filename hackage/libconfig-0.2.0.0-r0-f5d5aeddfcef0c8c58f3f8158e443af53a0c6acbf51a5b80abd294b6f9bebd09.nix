{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { prisms = true; binary = true; cereal = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "libconfig"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Matthew Peddie <mpeddie@gmail.com>";
      maintainer = "mpeddie@gmail.com";
      author = "Matthew Peddie";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to libconfig";
      description = "Low-level FFI bindings to the <http://www.hyperrealm.com/libconfig/ libconfig>\nconfiguration file library.\n\nThis binding is very low-level at the moment, but higher-level safe\ninterfaces are planned.\n\nThis library only binds to version 1.4.9 of the libconfig\nlibrary, which is known as @libconfig9@ in Debian-like\ndistributions, including Ubuntu.  It will not work with\nolder versions of libconfig, including the @libconfig8@\ndistributed in Ubuntu 12.04.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.prisms && flags.binary && flags.cereal
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."text-binary" or (errorHandler.buildDepError "text-binary"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."cereal-text" or (errorHandler.buildDepError "cereal-text"))
          ]
          else if flags.prisms && flags.binary
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."text" or (errorHandler.buildDepError "text"))
              (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
              (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
              (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
              (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
              (hsPkgs."text-binary" or (errorHandler.buildDepError "text-binary"))
            ]
            else if flags.prisms && flags.cereal
              then [
                (hsPkgs."base" or (errorHandler.buildDepError "base"))
                (hsPkgs."text" or (errorHandler.buildDepError "text"))
                (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
                (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
                (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
                (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
                (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
                (hsPkgs."cereal-text" or (errorHandler.buildDepError "cereal-text"))
              ]
              else if flags.binary && flags.cereal
                then [
                  (hsPkgs."base" or (errorHandler.buildDepError "base"))
                  (hsPkgs."text" or (errorHandler.buildDepError "text"))
                  (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
                  (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
                  (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
                  (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
                  (hsPkgs."text-binary" or (errorHandler.buildDepError "text-binary"))
                  (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
                  (hsPkgs."cereal-text" or (errorHandler.buildDepError "cereal-text"))
                ]
                else if flags.prisms
                  then [
                    (hsPkgs."base" or (errorHandler.buildDepError "base"))
                    (hsPkgs."text" or (errorHandler.buildDepError "text"))
                    (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
                    (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
                    (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
                    (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
                  ]
                  else if flags.binary
                    then [
                      (hsPkgs."base" or (errorHandler.buildDepError "base"))
                      (hsPkgs."text" or (errorHandler.buildDepError "text"))
                      (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
                      (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
                      (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
                      (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
                      (hsPkgs."text-binary" or (errorHandler.buildDepError "text-binary"))
                    ]
                    else if flags.cereal
                      then [
                        (hsPkgs."base" or (errorHandler.buildDepError "base"))
                        (hsPkgs."text" or (errorHandler.buildDepError "text"))
                        (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
                        (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
                        (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
                        (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
                        (hsPkgs."cereal-text" or (errorHandler.buildDepError "cereal-text"))
                      ]
                      else [
                        (hsPkgs."base" or (errorHandler.buildDepError "base"))
                        (hsPkgs."text" or (errorHandler.buildDepError "text"))
                        (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
                        (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
                        (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
                      ];
        libs = [ (pkgs."config" or (errorHandler.sysDepError "config")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      tests = {
        "doctest" = {
          depends = if flags.prisms
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."libconfig" or (errorHandler.buildDepError "libconfig"))
              (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
              (hsPkgs."doctest-prop" or (errorHandler.buildDepError "doctest-prop"))
              (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."libconfig" or (errorHandler.buildDepError "libconfig"))
              (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
              (hsPkgs."doctest-prop" or (errorHandler.buildDepError "doctest-prop"))
            ];
          buildable = true;
        };
      };
    };
  }