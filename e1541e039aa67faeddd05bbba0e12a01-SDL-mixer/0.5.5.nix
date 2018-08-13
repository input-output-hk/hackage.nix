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
        name = "SDL-mixer";
        version = "0.5.5";
      };
      license = "BSD-3-Clause";
      copyright = "2004-2008, Lemmih";
      maintainer = "Lemmih (lemmih@gmail.com)";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libSDL_mixer";
      description = "";
      buildType = "Custom";
    };
    components = {
      "SDL-mixer" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.SDL)
        ];
      };
    };
  }