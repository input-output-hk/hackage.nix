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
      specVersion = "1.2";
      identifier = {
        name = "imgurder";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dcolish@gmail.com";
      author = "Dan Colish";
      homepage = "";
      url = "";
      synopsis = "Uploader for Imgur";
      description = "A simple uploader for the Imgur api. You should register\nfor an api key";
      buildType = "Simple";
    };
    components = {
      exes = {
        "imgurder" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hxt-xpath)
            (hsPkgs.hxt)
            (hsPkgs.curl)
            (hsPkgs.directory)
            (hsPkgs.haskell98)
          ];
        };
      };
    };
  }