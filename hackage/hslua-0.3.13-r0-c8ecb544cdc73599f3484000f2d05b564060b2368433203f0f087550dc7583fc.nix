{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { system-lua = false; apicheck = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hslua"; version = "0.3.13"; };
      license = "MIT";
      copyright = "2007-2012, Gracjan Polak";
      maintainer = "omeragacan@gmail.com";
      author = "Gracjan Polak, Ömer Sinan Ağacan";
      homepage = "";
      url = "";
      synopsis = "A Lua language interpreter embedding in Haskell";
      description = "The Scripting.Lua module is a wrapper of Lua language interpreter\nas described in www.lua.org.\n\nThis package contains full Lua interpreter version 5.1.4.\nIf you want to link it with system-wide Lua installation, use system-lua flag.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        pkgconfig = (pkgs.lib).optional (flags.system-lua) (pkgconfPkgs."lua" or ((hsPkgs.pkgs-errors).pkgConfDepError "lua"));
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
        };
      };
    }