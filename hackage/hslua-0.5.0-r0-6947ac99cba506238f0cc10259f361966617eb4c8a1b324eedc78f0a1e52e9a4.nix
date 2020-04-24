{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { system-lua = false; apicheck = false; luajit = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hslua"; version = "0.5.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = (pkgs.lib).optionals (flags.system-lua) (if flags.luajit
          then [
            (pkgs."luajit-5.1" or ((hsPkgs.pkgs-errors).sysDepError "luajit-5.1"))
            ]
          else [ (pkgs."lua" or ((hsPkgs.pkgs-errors).sysDepError "lua")) ]);
        buildable = true;
        };
      tests = {
        "simple-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hslua" or ((hsPkgs.pkgs-errors).buildDepError "hslua"))
            ];
          buildable = true;
          };
        "callbacks" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hslua" or ((hsPkgs.pkgs-errors).buildDepError "hslua"))
            ];
          buildable = true;
          };
        "haskellfun" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hslua" or ((hsPkgs.pkgs-errors).buildDepError "hslua"))
            ];
          buildable = true;
          };
        "err_prop" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hslua" or ((hsPkgs.pkgs-errors).buildDepError "hslua"))
            ];
          buildable = true;
          };
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hslua" or ((hsPkgs.pkgs-errors).buildDepError "hslua"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or ((hsPkgs.pkgs-errors).buildDepError "hspec-contrib"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            ];
          buildable = true;
          };
        };
      };
    }