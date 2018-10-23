{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "dx9d3d";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "none";
      author = "Esa Ilari Vuokko";
      homepage = "";
      url = "";
      synopsis = "A binding to the Microsoft DirectX 9 API.";
      description = "A Haskell binding for the Microsoft DirectX 9.\n\nThis package doesn't have any sample code. But mokehehe wrote sample code below blog article.\n<http://mokehehe.blogspot.com/2009/04/using-directx-from-haskell.html>\n\nThis version requires DirectX SDK that is specified in --extra-include-dirs and --extra-lib-dirs PATH.\nSee the README file for more information.";
      buildType = "Simple";
    };
    components = {
      "dx9d3d" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Win32)
          (hsPkgs.dx9base)
        ];
        libs = [ (pkgs."d3d9") ];
      };
    };
  }