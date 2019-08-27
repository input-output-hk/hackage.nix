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
      disable-git-info = false;
      hide-dependency-versions = false;
      integration-tests = false;
      static = false;
      supported-build = false;
      };
    package = {
      specVersion = "2.0";
      identifier = { name = "stack"; version = "2.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "manny@fpcomplete.com";
      author = "Commercial Haskell SIG";
      homepage = "http://haskellstack.org";
      url = "";
      synopsis = "The Haskell Tool Stack";
      description = "Please see the documentation at <https://docs.haskellstack.org>\nfor usage information.\n\nIf building a 'stack' executable for distribution, please download the\nsource code from <https://github.com/commercialhaskell/stack/releases>\nand build it using Stack itself in order to ensure identical behaviour\nto official binaries.  This package on Hackage is provided for convenience\nand bootstrapping purposes.\n\nNote that the API for the library is not currently stable, and may\nchange significantly, even between minor releases. It is\ncurrently only intended for use by the executable.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (buildToolDepError "filepath")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."annotated-wl-pprint" or (buildDepError "annotated-wl-pprint"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."cryptonite-conduit" or (buildDepError "cryptonite-conduit"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."echo" or (buildDepError "echo"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."filelock" or (buildDepError "filelock"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
          (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
          (hsPkgs."hackage-security" or (buildDepError "hackage-security"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hi-file-parser" or (buildDepError "hi-file-parser"))
          (hsPkgs."hpack" or (buildDepError "hpack"))
          (hsPkgs."hpc" or (buildDepError "hpc"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."http-download" or (buildDepError "http-download"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."mintty" or (buildDepError "mintty"))
          (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."mustache" or (buildDepError "mustache"))
          (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."open-browser" or (buildDepError "open-browser"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."pantry" or (buildDepError "pantry"))
          (hsPkgs."path" or (buildDepError "path"))
          (hsPkgs."path-io" or (buildDepError "path-io"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
          (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."project-template" or (buildDepError "project-template"))
          (hsPkgs."regex-applicative-text" or (buildDepError "regex-applicative-text"))
          (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."retry" or (buildDepError "retry"))
          (hsPkgs."rio" or (buildDepError "rio"))
          (hsPkgs."rio-prettyprint" or (buildDepError "rio-prettyprint"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."terminal-size" or (buildDepError "terminal-size"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-metrics" or (buildDepError "text-metrics"))
          (hsPkgs."th-reify-many" or (buildDepError "th-reify-many"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."typed-process" or (buildDepError "typed-process"))
          (hsPkgs."unicode-transforms" or (buildDepError "unicode-transforms"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."unliftio" or (buildDepError "unliftio"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (buildDepError "unix")) ]);
        build-tools = (pkgs.lib).optional (!system.isWindows) (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")));
        };
      exes = {
        "stack" = {
          depends = ([
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."annotated-wl-pprint" or (buildDepError "annotated-wl-pprint"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."cryptonite-conduit" or (buildDepError "cryptonite-conduit"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."echo" or (buildDepError "echo"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."filelock" or (buildDepError "filelock"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
            (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
            (hsPkgs."hackage-security" or (buildDepError "hackage-security"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hi-file-parser" or (buildDepError "hi-file-parser"))
            (hsPkgs."hpack" or (buildDepError "hpack"))
            (hsPkgs."hpc" or (buildDepError "hpc"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."http-download" or (buildDepError "http-download"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."mintty" or (buildDepError "mintty"))
            (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mustache" or (buildDepError "mustache"))
            (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."open-browser" or (buildDepError "open-browser"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pantry" or (buildDepError "pantry"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."project-template" or (buildDepError "project-template"))
            (hsPkgs."regex-applicative-text" or (buildDepError "regex-applicative-text"))
            (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."retry" or (buildDepError "retry"))
            (hsPkgs."rio" or (buildDepError "rio"))
            (hsPkgs."rio-prettyprint" or (buildDepError "rio-prettyprint"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."stack" or (buildDepError "stack"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."terminal-size" or (buildDepError "terminal-size"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-metrics" or (buildDepError "text-metrics"))
            (hsPkgs."th-reify-many" or (buildDepError "th-reify-many"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."unicode-transforms" or (buildDepError "unicode-transforms"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ] ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
            else [
              (hsPkgs."unix" or (buildDepError "unix"))
              ])) ++ (pkgs.lib).optionals (!flags.disable-git-info) [
            (hsPkgs."githash" or (buildDepError "githash"))
            (hsPkgs."optparse-simple" or (buildDepError "optparse-simple"))
            ];
          build-tools = (pkgs.lib).optional (!system.isWindows) (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")));
          };
        "stack-integration-test" = {
          depends = [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."annotated-wl-pprint" or (buildDepError "annotated-wl-pprint"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."cryptonite-conduit" or (buildDepError "cryptonite-conduit"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."echo" or (buildDepError "echo"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."filelock" or (buildDepError "filelock"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
            (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
            (hsPkgs."hackage-security" or (buildDepError "hackage-security"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hi-file-parser" or (buildDepError "hi-file-parser"))
            (hsPkgs."hpack" or (buildDepError "hpack"))
            (hsPkgs."hpc" or (buildDepError "hpc"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."http-download" or (buildDepError "http-download"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."mintty" or (buildDepError "mintty"))
            (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mustache" or (buildDepError "mustache"))
            (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."open-browser" or (buildDepError "open-browser"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."pantry" or (buildDepError "pantry"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."project-template" or (buildDepError "project-template"))
            (hsPkgs."regex-applicative-text" or (buildDepError "regex-applicative-text"))
            (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."retry" or (buildDepError "retry"))
            (hsPkgs."rio" or (buildDepError "rio"))
            (hsPkgs."rio-prettyprint" or (buildDepError "rio-prettyprint"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."terminal-size" or (buildDepError "terminal-size"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-metrics" or (buildDepError "text-metrics"))
            (hsPkgs."th-reify-many" or (buildDepError "th-reify-many"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."unicode-transforms" or (buildDepError "unicode-transforms"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ] ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
            else [ (hsPkgs."unix" or (buildDepError "unix")) ]);
          build-tools = (pkgs.lib).optional (!system.isWindows) (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")));
          };
        };
      tests = {
        "stack-test" = {
          depends = [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."annotated-wl-pprint" or (buildDepError "annotated-wl-pprint"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."cryptonite-conduit" or (buildDepError "cryptonite-conduit"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."echo" or (buildDepError "echo"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."filelock" or (buildDepError "filelock"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
            (hsPkgs."generic-deriving" or (buildDepError "generic-deriving"))
            (hsPkgs."hackage-security" or (buildDepError "hackage-security"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hi-file-parser" or (buildDepError "hi-file-parser"))
            (hsPkgs."hpack" or (buildDepError "hpack"))
            (hsPkgs."hpc" or (buildDepError "hpc"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."http-download" or (buildDepError "http-download"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."mintty" or (buildDepError "mintty"))
            (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mustache" or (buildDepError "mustache"))
            (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."open-browser" or (buildDepError "open-browser"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pantry" or (buildDepError "pantry"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."path-io" or (buildDepError "path-io"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."project-template" or (buildDepError "project-template"))
            (hsPkgs."raw-strings-qq" or (buildDepError "raw-strings-qq"))
            (hsPkgs."regex-applicative-text" or (buildDepError "regex-applicative-text"))
            (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."retry" or (buildDepError "retry"))
            (hsPkgs."rio" or (buildDepError "rio"))
            (hsPkgs."rio-prettyprint" or (buildDepError "rio-prettyprint"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."stack" or (buildDepError "stack"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."terminal-size" or (buildDepError "terminal-size"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-metrics" or (buildDepError "text-metrics"))
            (hsPkgs."th-reify-many" or (buildDepError "th-reify-many"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."typed-process" or (buildDepError "typed-process"))
            (hsPkgs."unicode-transforms" or (buildDepError "unicode-transforms"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."unliftio" or (buildDepError "unliftio"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ] ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
            else [ (hsPkgs."unix" or (buildDepError "unix")) ]);
          build-tools = (pkgs.lib).optional (!system.isWindows) (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")));
          };
        };
      };
    }