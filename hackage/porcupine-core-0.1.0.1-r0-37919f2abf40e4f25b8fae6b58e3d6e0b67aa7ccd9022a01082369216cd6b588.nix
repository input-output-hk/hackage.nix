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
    flags = { usemonadbayes = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "porcupine-core"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2018 EURL Tweag, NovaDiscovery";
      maintainer = "Yves Parès <yves.pares@tweag.io>";
      author = "";
      homepage = "https://github.com/tweag/porcupine#readme";
      url = "";
      synopsis = "Express portable, composable and reusable data tasks and pipelines";
      description = "porcupine is centered around the PTask datatype, which represents a\ncomputation that will request access to some resources (both in read and write\nmodes) and require some options (parameters, with docstrings and default\nvalues). PTasks are composable both sequentially and in parallel, into a\npipeline of tasks. The resources and parameters are organized in a tree which\nwill be automatically exposed to the outside world. This makes the pipeline\nself-documented, and makes it so any option or file required at some point by\nany task can be visualized and set or remapped (via a combination of a YAML or\nJSON config file and command-line arguments) before the pipeline will\nrun. That means that the PTasks are completely agnostic of their data inputs,\nand that new data sources can be added without having to change any of the\ntasks' logic or even their types. This is done via the LocationAccessor\ntypeclass. `porcupine-core` provides only access to local files (via\nresourcet), other location accessors will be in separate packages. See for\ninstance the <https://hackage.haskell.org/package/porcupine-http> package to\naccess HTTP urls. PTasks also provide caching thanks to the funflow\npackage. See the README at <https://github.com/tweag/porcupine#README.md> and\nthe examples in `porcupine-core` package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."binary-orphans" or (buildDepError "binary-orphans"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cassava" or (buildDepError "cassava"))
          (hsPkgs."clock" or (buildDepError "clock"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."docrecords" or (buildDepError "docrecords"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."formatting" or (buildDepError "formatting"))
          (hsPkgs."funflow" or (buildDepError "funflow"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."katip" or (buildDepError "katip"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."path" or (buildDepError "path"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."reader-soup" or (buildDepError "reader-soup"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."store" or (buildDepError "store"))
          (hsPkgs."streaming" or (buildDepError "streaming"))
          (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
          (hsPkgs."streaming-conduit" or (buildDepError "streaming-conduit"))
          (hsPkgs."streaming-utils" or (buildDepError "streaming-utils"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."url" or (buildDepError "url"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vinyl" or (buildDepError "vinyl"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          ];
        buildable = true;
        };
      exes = {
        "example-radon" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."binary-orphans" or (buildDepError "binary-orphans"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."docrecords" or (buildDepError "docrecords"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."formatting" or (buildDepError "formatting"))
            (hsPkgs."funflow" or (buildDepError "funflow"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hvega" or (buildDepError "hvega"))
            (hsPkgs."katip" or (buildDepError "katip"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."log-domain" or (buildDepError "log-domain"))
            (hsPkgs."monad-bayes" or (buildDepError "monad-bayes"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."porcupine-core" or (buildDepError "porcupine-core"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."reader-soup" or (buildDepError "reader-soup"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."store" or (buildDepError "store"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-conduit" or (buildDepError "streaming-conduit"))
            (hsPkgs."streaming-utils" or (buildDepError "streaming-utils"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."url" or (buildDepError "url"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          buildable = if flags.usemonadbayes then true else false;
          };
        "example0" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."binary-orphans" or (buildDepError "binary-orphans"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."docrecords" or (buildDepError "docrecords"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."formatting" or (buildDepError "formatting"))
            (hsPkgs."funflow" or (buildDepError "funflow"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."katip" or (buildDepError "katip"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."porcupine-core" or (buildDepError "porcupine-core"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."reader-soup" or (buildDepError "reader-soup"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."store" or (buildDepError "store"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-conduit" or (buildDepError "streaming-conduit"))
            (hsPkgs."streaming-utils" or (buildDepError "streaming-utils"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."url" or (buildDepError "url"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          buildable = true;
          };
        "example0.1" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."binary-orphans" or (buildDepError "binary-orphans"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."docrecords" or (buildDepError "docrecords"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."formatting" or (buildDepError "formatting"))
            (hsPkgs."funflow" or (buildDepError "funflow"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."katip" or (buildDepError "katip"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."porcupine-core" or (buildDepError "porcupine-core"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."reader-soup" or (buildDepError "reader-soup"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."store" or (buildDepError "store"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-conduit" or (buildDepError "streaming-conduit"))
            (hsPkgs."streaming-utils" or (buildDepError "streaming-utils"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."url" or (buildDepError "url"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          buildable = true;
          };
        "example1" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."binary-orphans" or (buildDepError "binary-orphans"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."docrecords" or (buildDepError "docrecords"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."formatting" or (buildDepError "formatting"))
            (hsPkgs."funflow" or (buildDepError "funflow"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."katip" or (buildDepError "katip"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."porcupine-core" or (buildDepError "porcupine-core"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."reader-soup" or (buildDepError "reader-soup"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."store" or (buildDepError "store"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-conduit" or (buildDepError "streaming-conduit"))
            (hsPkgs."streaming-utils" or (buildDepError "streaming-utils"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."url" or (buildDepError "url"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          buildable = true;
          };
        "example2" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."binary-orphans" or (buildDepError "binary-orphans"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."docrecords" or (buildDepError "docrecords"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."formatting" or (buildDepError "formatting"))
            (hsPkgs."funflow" or (buildDepError "funflow"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."katip" or (buildDepError "katip"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."porcupine-core" or (buildDepError "porcupine-core"))
            (hsPkgs."profunctors" or (buildDepError "profunctors"))
            (hsPkgs."reader-soup" or (buildDepError "reader-soup"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."store" or (buildDepError "store"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-conduit" or (buildDepError "streaming-conduit"))
            (hsPkgs."streaming-utils" or (buildDepError "streaming-utils"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."url" or (buildDepError "url"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vinyl" or (buildDepError "vinyl"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          buildable = true;
          };
        };
      };
    }