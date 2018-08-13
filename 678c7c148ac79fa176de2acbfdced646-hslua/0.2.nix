{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "hslua";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2007-2007, Gracjan Polak";
      maintainer = "Gracjan Polak <gracjanpolak@gmail.com>";
      author = "Gracjan Polak <gracjanpolak@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A Lua language interpreter embedding in Haskell";
      description = "The Scripting.Lua module is a wrapper of Lua language interpreter\nas described in www.lua.org.\n\nThe package is standalone: full Lua interpreter is distributed in this\npackage as well.";
      buildType = "Custom";
    };
    components = {
      "hslua" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }