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
        name = "bower-json";
        version = "0.8.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "harry@garrood.me";
      author = "Harry Garrood";
      homepage = "https://github.com/hdgarrood/bower-json";
      url = "";
      synopsis = "Read bower.json from Haskell";
      description = "Bower is a package manager for the web (see <http://bower.io>).\nThis package provides a data type and ToJSON/FromJSON instances for Bower's\npackage manifest file, bower.json.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.deepseq)
          (hsPkgs.aeson-better-errors)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.scientific)
          (hsPkgs.vector)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bower-json)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }