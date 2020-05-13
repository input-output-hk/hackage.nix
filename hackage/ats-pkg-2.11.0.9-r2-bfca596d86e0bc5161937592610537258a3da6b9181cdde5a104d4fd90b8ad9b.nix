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
    flags = { profile = false; eventlog = false; development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "ats-pkg"; version = "2.11.0.9"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "A build tool for ATS";
      description = "A collection of scripts to simplify building ATS projects.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cli-setup or (pkgs.buildPackages.cli-setup or (errorHandler.buildToolDepError "cli-setup")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."bzlib" or (errorHandler.buildDepError "bzlib"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."lzma" or (errorHandler.buildDepError "lzma"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."shake-ats" or (errorHandler.buildDepError "shake-ats"))
          (hsPkgs."shake-ext" or (errorHandler.buildDepError "shake-ext"))
          (hsPkgs."shake-c" or (errorHandler.buildDepError "shake-c"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."dependency" or (errorHandler.buildDepError "dependency"))
          (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        build-tools = [
          (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or (errorHandler.buildToolDepError "cpphs")))
          ];
        buildable = true;
        };
      exes = {
        "atspkg" = {
          depends = (pkgs.lib).optionals (flags.profile) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ats-pkg" or (errorHandler.buildDepError "ats-pkg"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."shake-ats" or (errorHandler.buildDepError "shake-ats"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            ];
          buildable = true;
          };
        };
      };
    }