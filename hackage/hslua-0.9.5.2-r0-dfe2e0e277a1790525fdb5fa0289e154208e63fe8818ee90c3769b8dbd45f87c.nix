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
    flags = {
      system-lua = false;
      apicheck = false;
      lua_32bits = false;
      allow-unsafe-gc = true;
      export-dynamic = true;
      luajit = false;
      lua501 = false;
      lua502 = false;
      use-pkgconfig = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "hslua"; version = "0.9.5.2"; };
      license = "MIT";
      copyright = "© 2007–2012 Gracjan Polak\n© 2012–2016 Ömer Sinan Ağacan\n© 2016–2017 Albert Krewinkel";
      maintainer = "albert+hslua@zeitkraut.de";
      author = "Gracjan Polak, Ömer Sinan Ağacan";
      homepage = "";
      url = "";
      synopsis = "A Lua language interpreter embedding in Haskell";
      description = "The Foreign.Lua module is a wrapper of Lua language\ninterpreter as described on\n<https://www.lua.org/ lua.org>.\n\nThis package contains a full Lua interpreter version\n5.3.4. If you want to link it with a system-wide Lua\ninstallation, use the @system-lua@ flag.\n\n<https://github.com/hslua/hslua-examples Example programs>\nare available in a separate repository.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        libs = (pkgs.lib).optionals (flags.system-lua || flags.luajit || flags.lua501 || flags.lua502) (if flags.luajit
          then (pkgs.lib).optional (!flags.use-pkgconfig) (pkgs."luajit-5.1" or (errorHandler.sysDepError "luajit-5.1"))
          else (pkgs.lib).optional (!flags.use-pkgconfig) (pkgs."lua" or (errorHandler.sysDepError "lua")));
        pkgconfig = (pkgs.lib).optionals (flags.system-lua || flags.luajit || flags.lua501 || flags.lua502) (if flags.luajit
          then (pkgs.lib).optional (flags.use-pkgconfig) (pkgconfPkgs."luajit" or (errorHandler.pkgConfDepError "luajit"))
          else (pkgs.lib).optionals (flags.use-pkgconfig) (if flags.lua501
            then [
              (pkgconfPkgs."lua5.1" or (errorHandler.pkgConfDepError "lua5.1"))
              ]
            else if flags.lua502
              then [
                (pkgconfPkgs."lua5.2" or (errorHandler.pkgConfDepError "lua5.2"))
                ]
              else [
                (pkgconfPkgs."lua5.3" or (errorHandler.pkgConfDepError "lua5.3"))
                ]));
        buildable = true;
        };
      tests = {
        "test-hslua" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }