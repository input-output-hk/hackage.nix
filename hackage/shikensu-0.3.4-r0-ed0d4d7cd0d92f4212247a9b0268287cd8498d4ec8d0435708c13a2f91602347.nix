{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "shikensu";
        version = "0.3.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Steven Vandevelde <icid.asset@gmail.com>";
      author = "";
      homepage = "https://github.com/icidasset/shikensu#readme";
      url = "";
      synopsis = "Run a sequence of functions on in-memory representations of files";
      description = "See README at <https://github.com/icidasset/shikensu#readme>";
      buildType = "Simple";
    };
    components = {
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.flow)
            (hsPkgs.Glob)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }