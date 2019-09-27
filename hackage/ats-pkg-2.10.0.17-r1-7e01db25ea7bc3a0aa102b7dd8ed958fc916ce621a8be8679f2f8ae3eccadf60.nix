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
      profile = false;
      eventlog = false;
      development = false;
      no-executable = false;
      };
    package = {
      specVersion = "1.18";
      identifier = { name = "ats-pkg"; version = "2.10.0.17"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/atspkg#readme";
      url = "";
      synopsis = "A build tool for ATS";
      description = "A collection of scripts to simplify building ATS projects.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cli-setup or (pkgs.buildPackages.cli-setup or (buildToolDepError "cli-setup")))
        ];
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
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."parallel-io" or (buildDepError "parallel-io"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."dhall" or (buildDepError "dhall"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."shake-ats" or (buildDepError "shake-ats"))
          (hsPkgs."shake-ext" or (buildDepError "shake-ext"))
          (hsPkgs."composition-prelude" or (buildDepError "composition-prelude"))
          (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."dependency" or (buildDepError "dependency"))
          (hsPkgs."filemanip" or (buildDepError "filemanip"))
          ];
        buildable = true;
        };
      exes = {
        "atspkg" = {
          depends = (pkgs.lib).optionals (!flags.no-executable) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ats-pkg" or (buildDepError "ats-pkg"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."shake-ats" or (buildDepError "shake-ats"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."composition-prelude" or (buildDepError "composition-prelude"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."parallel-io" or (buildDepError "parallel-io"))
            (hsPkgs."shake" or (buildDepError "shake"))
            ];
          buildable = if flags.no-executable then false else true;
          };
        };
      };
    }