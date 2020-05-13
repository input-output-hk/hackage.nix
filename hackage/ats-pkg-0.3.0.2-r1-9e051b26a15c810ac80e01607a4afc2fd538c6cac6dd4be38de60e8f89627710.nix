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
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "ats-pkg"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/ats-pkg#readme";
      url = "";
      synopsis = "Package manager for ATS";
      description = "A collection of scripts to make building ATS projects easy.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."shake-ext" or (errorHandler.buildDepError "shake-ext"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
          ];
        buildable = true;
        };
      exes = {
        "atspkg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ats-pkg" or (errorHandler.buildDepError "ats-pkg"))
            ];
          buildable = true;
          };
        };
      };
    }