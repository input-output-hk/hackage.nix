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
        name = "mbtiles";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Joe Canero";
      maintainer = "jmc41493@gmail.com";
      author = "Joe Canero";
      homepage = "https://github.com/caneroj1/mbtiles#readme";
      url = "";
      synopsis = "Haskell MBTiles client";
      description = "Reads MBTiles files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.sqlite-simple)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "mbtiles-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mbtiles)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }