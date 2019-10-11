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
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "cpkg"; version = "0.2.3.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018-2019 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Build tool for C";
      description = "A build tool and package manager configured using [Dhall](https://github.com/dhall-lang/dhall-haskell).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."bzlib" or (buildDepError "bzlib"))
          (hsPkgs."lzma" or (buildDepError "lzma"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
          (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."recursion" or (buildDepError "recursion"))
          (hsPkgs."filemanip" or (buildDepError "filemanip"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."libarchive" or (buildDepError "libarchive"))
          (hsPkgs."dir-traverse" or (buildDepError "dir-traverse"))
          (hsPkgs."composition-prelude" or (buildDepError "composition-prelude"))
          (hsPkgs."lzlib" or (buildDepError "lzlib"))
          ] ++ [ (hsPkgs."dhall" or (buildDepError "dhall")) ];
        build-tools = [
          (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (buildToolDepError "cpphs")))
          ];
        buildable = true;
        };
      exes = {
        "cpkg" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cpkg" or (buildDepError "cpkg"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."dhall" or (buildDepError "dhall"))
            ];
          buildable = true;
          };
        };
      tests = {
        "cpkg-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cpkg" or (buildDepError "cpkg"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-megaparsec" or (buildDepError "hspec-megaparsec"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            ];
          buildable = true;
          };
        };
      };
    }