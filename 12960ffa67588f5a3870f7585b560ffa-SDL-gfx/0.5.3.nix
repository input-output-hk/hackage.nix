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
        name = "SDL-gfx";
        version = "0.5.3";
      };
      license = "BSD-3-Clause";
      copyright = "2004-2005, Lemmih";
      maintainer = "Lemmih (lemmih@gmail.com)";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libSDL_gfx";
      description = "";
      buildType = "Custom";
    };
    components = {
      "SDL-gfx" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.SDL)
        ];
      };
    };
  }