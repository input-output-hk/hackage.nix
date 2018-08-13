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
        name = "shikensu";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "icid.asset@gmail.com";
      author = "Steven Vandevelde";
      homepage = "https://github.com/icidasset/shikensu#README";
      url = "";
      synopsis = "A small toolset for building static websites";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "shikensu" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.flow)
          (hsPkgs.Glob)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.flow)
            (hsPkgs.shikensu)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }