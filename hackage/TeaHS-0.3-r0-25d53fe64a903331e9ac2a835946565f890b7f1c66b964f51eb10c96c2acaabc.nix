{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "TeaHS";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor-Davis";
      homepage = "http://liamoc.net/static/TeaHS";
      url = "";
      synopsis = "TeaHS Game Creation Library";
      description = "A simple library for use creating 2D games, inspired by the Ruby library Tea.";
      buildType = "Simple";
    };
    components = {
      "TeaHS" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.SDL)
          (hsPkgs.Sprig)
          (hsPkgs.SDL-image)
          (hsPkgs.SDL-mixer)
          (hsPkgs.SFont)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
    };
  }