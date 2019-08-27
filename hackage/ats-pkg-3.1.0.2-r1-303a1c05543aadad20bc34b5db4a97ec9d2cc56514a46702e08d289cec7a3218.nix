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
    flags = { profile = false; eventlog = false; development = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "ats-pkg"; version = "3.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "A build tool for ATS";
      description = "A collection of scripts to simplify building ATS projects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."shake" or (buildDepError "shake"))
          (hsPkgs."bzlib" or (buildDepError "bzlib"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."lzma" or (buildDepError "lzma"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."parallel-io" or (buildDepError "parallel-io"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."dhall" or (buildDepError "dhall"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."shake-ats" or (buildDepError "shake-ats"))
          (hsPkgs."shake-ext" or (buildDepError "shake-ext"))
          (hsPkgs."shake-c" or (buildDepError "shake-c"))
          (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."dependency" or (buildDepError "dependency"))
          (hsPkgs."filemanip" or (buildDepError "filemanip"))
          (hsPkgs."quaalude" or (buildDepError "quaalude"))
          ];
        };
      sublibs = {
        "quaalude" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."dhall" or (buildDepError "dhall"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."shake" or (buildDepError "shake"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."composition-prelude" or (buildDepError "composition-prelude"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
          build-tools = [
            (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (buildToolDepError "cpphs")))
            ];
          };
        };
      exes = {
        "atspkg" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ats-pkg" or (buildDepError "ats-pkg"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."shake-ats" or (buildDepError "shake-ats"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."composition-prelude" or (buildDepError "composition-prelude"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."parallel-io" or (buildDepError "parallel-io"))
            (hsPkgs."quaalude" or (buildDepError "quaalude"))
            (hsPkgs."dependency" or (buildDepError "dependency"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."shake" or (buildDepError "shake"))
            (hsPkgs."cli-setup" or (buildDepError "cli-setup"))
            ];
          };
        };
      };
    }