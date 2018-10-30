{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rgb-color-model";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "joegesualdo@gmail.com";
      author = "Joe Gesualdo";
      homepage = "https://github.com/joegesualdo/rgb-color-model";
      url = "";
      synopsis = "Haskell types for working with RGB colors";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }