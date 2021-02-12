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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hlibgit2"; version = "0.18.0.16"; };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley, Sakari Jokinen, Jacob Stanleyyeah,";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings to libgit2";
      description = "Bindings to libgit2 v0.18.0.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
        libs = if system.isWindows
          then [
            (pkgs."ws2_32" or (errorHandler.sysDepError "ws2_32"))
            (pkgs."regex" or (errorHandler.sysDepError "regex"))
            (pkgs."winhttp" or (errorHandler.sysDepError "winhttp"))
            (pkgs."crypt32" or (errorHandler.sysDepError "crypt32"))
            (pkgs."rpcrt4" or (errorHandler.sysDepError "rpcrt4"))
            (pkgs."ssl" or (errorHandler.sysDepError "ssl"))
            (pkgs."crypto" or (errorHandler.sysDepError "crypto"))
            ]
          else [
            (pkgs."ssl" or (errorHandler.sysDepError "ssl"))
            (pkgs."crypto" or (errorHandler.sysDepError "crypto"))
            (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
            ];
        buildable = true;
        };
      tests = {
        "smoke" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlibgit2" or (errorHandler.buildDepError "hlibgit2"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.git.components.exes.git or (pkgs.buildPackages.git or (errorHandler.buildToolDepError "git:git")))
            ];
          buildable = true;
          };
        };
      };
    }