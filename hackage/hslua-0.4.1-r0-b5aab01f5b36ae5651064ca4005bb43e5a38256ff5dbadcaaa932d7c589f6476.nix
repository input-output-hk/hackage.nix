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
    flags = { system-lua = false; apicheck = false; luajit = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hslua"; version = "0.4.1"; };
      license = "MIT";
      copyright = "Gracjan Polak 2007-2012, Ömer Sinan Ağacan 2012-2015";
      maintainer = "omeragacan@gmail.com";
      author = "Gracjan Polak, Ömer Sinan Ağacan";
      homepage = "";
      url = "";
      synopsis = "A Lua language interpreter embedding in Haskell";
      description = "The Scripting.Lua module is a wrapper of Lua language interpreter\nas described in [lua.org](http://www.lua.org/).\n\nThis package contains full Lua interpreter version 5.1.5.\nIf you want to link it with system-wide Lua installation, use @system-lua@ flag.\n\n[Example programs](https://github.com/osa1/hslua/tree/master/examples)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = pkgs.lib.optionals (flags.system-lua) (if flags.luajit
          then [
            (pkgs."luajit-5.1" or (errorHandler.sysDepError "luajit-5.1"))
          ]
          else [ (pkgs."lua" or (errorHandler.sysDepError "lua")) ]);
        buildable = true;
      };
      tests = {
        "simple-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
          ];
          buildable = true;
        };
        "callbacks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
          ];
          buildable = true;
        };
        "haskellfun" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
          ];
          buildable = true;
        };
        "err_prop" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
          ];
          buildable = true;
        };
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or (errorHandler.buildDepError "hspec-contrib"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
          ];
          buildable = true;
        };
      };
    };
  }