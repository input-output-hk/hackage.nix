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
      specVersion = "1.10";
      identifier = {
        name = "hslua-aeson";
        version = "0.3.0.2";
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
      "hslua-aeson" = {
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
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.aeson)
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