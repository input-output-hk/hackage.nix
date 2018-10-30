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
        name = "hslua-aeson";
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "© 2017–2018 Albert Krewinkel";
      maintainer = "tarleb+hslua@zeitkraut.de";
      author = "Albert Krewinkel";
      homepage = "https://github.com/tarleb/hslua-aeson#readme";
      url = "";
      synopsis = "Allow aeson data types to be used with lua.";
      description = "This package provides instances to push and receive any\ndatatype encodable as JSON to and from the Lua stack.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.hashable)
          (hsPkgs.hslua)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "hslua-aeson-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.hashable)
            (hsPkgs.hslua)
            (hsPkgs.hslua-aeson)
            (hsPkgs.ieee754)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }