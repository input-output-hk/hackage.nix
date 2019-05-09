{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { system-lua = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hslua"; version = "0.3.9"; };
      license = "MIT";
      copyright = "2007-2012, Gracjan Polak";
      maintainer = "Ömer Sinan Ağacan <omeragacan@gmail.com>";
      author = "Gracjan Polak <gracjanpolak@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A Lua language interpreter embedding in Haskell";
      description = "The Scripting.Lua module is a wrapper of Lua language interpreter\nas described in www.lua.org.\n\nThis package contains full Lua interpreter version 5.1.4.\nIf you want to link it with system-wide Lua installation, use system-lua flag.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.mtl) ];
        pkgconfig = (pkgs.lib).optional (flags.system-lua) (pkgconfPkgs."lua");
        };
      tests = {
        "simple-test" = { depends = [ (hsPkgs.base) (hsPkgs.hslua) ]; };
        };
      };
    }