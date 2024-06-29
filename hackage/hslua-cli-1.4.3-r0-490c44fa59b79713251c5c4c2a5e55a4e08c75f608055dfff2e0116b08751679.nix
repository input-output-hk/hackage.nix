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
    flags = { executable = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hslua-cli"; version = "1.4.3"; };
      license = "MIT";
      copyright = "© 2022-2024 Albert Krewinkel";
      maintainer = "Albert Krewinkel <tarleb@hslua.org>";
      author = "Albert Krewinkel";
      homepage = "https://hslua.org/";
      url = "";
      synopsis = "Command-line interface for Lua";
      description = "Provides an embeddable command-line interface for Lua.\nThe interface is compatible with the standard Lua\ninterpreter, i.e., the `lua` executable provided in a\ndefault Lua installation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hslua-core" or (errorHandler.buildDepError "hslua-core"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hslua-marshalling" or (errorHandler.buildDepError "hslua-marshalling"))
          (hsPkgs."hslua-repl" or (errorHandler.buildDepError "hslua-repl"))
          (hsPkgs."lua" or (errorHandler.buildDepError "lua"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
      };
      exes = {
        "hslua" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hslua-core" or (errorHandler.buildDepError "hslua-core"))
          ] ++ pkgs.lib.optional (flags.executable) (hsPkgs."hslua-cli" or (errorHandler.buildDepError "hslua-cli"));
          buildable = if flags.executable then true else false;
        };
      };
    };
  }