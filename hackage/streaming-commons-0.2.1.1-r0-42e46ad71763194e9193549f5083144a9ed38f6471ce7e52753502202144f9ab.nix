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
    flags = { use-bytestring-builder = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "streaming-commons"; version = "0.2.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Emanuel Borsboom";
      homepage = "https://github.com/fpco/streaming-commons";
      url = "";
      synopsis = "Common lower-level functions needed by various streaming data libraries";
      description = "Provides low-dependency functionality commonly needed by various streaming data libraries, such as conduit and pipes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          ] ++ (if system.isWindows
          then [
            (hsPkgs."Win32" or (buildDepError "Win32"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ]
          else [
            (hsPkgs."unix" or (buildDepError "unix"))
            ])) ++ (if flags.use-bytestring-builder
          then [
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))
            ]
          else [ (hsPkgs."bytestring" or (buildDepError "bytestring")) ]);
        buildable = true;
        };
      tests = {
        "test" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ] ++ (if flags.use-bytestring-builder
            then [
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))
              ]
            else [
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              ])) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
          buildable = true;
          };
        };
      benchmarks = {
        "count-chars" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
            ];
          buildable = true;
          };
        "decode-memory-usage" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
            ];
          buildable = true;
          };
        "builder-to-bytestring-io" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
            ] ++ (if flags.use-bytestring-builder
            then [
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))
              ]
            else [ (hsPkgs."bytestring" or (buildDepError "bytestring")) ]);
          buildable = true;
          };
        };
      };
    }