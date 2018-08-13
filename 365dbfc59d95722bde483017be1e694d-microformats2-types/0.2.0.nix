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
      specVersion = "1.18";
      identifier = {
        name = "microformats2-types";
        version = "0.2.0";
      };
      license = "Apache-2.0";
      copyright = "2014 Greg V <floatboth@me.com>";
      maintainer = "floatboth@me.com";
      author = "Greg V";
      homepage = "https://github.com/myfreeweb/microformats2-types";
      url = "";
      synopsis = "Microformats 2 types for Haskell.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "microformats2-types" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.either)
          (hsPkgs.aeson)
          (hsPkgs.pandoc-types)
        ];
      };
    };
  }