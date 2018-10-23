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
        name = "rob";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "Gianlua Guarini";
      maintainer = "gianluca.guarini@gmail.com";
      author = "Gianluca Guarini";
      homepage = "https://github.com/gianlucaguarini/rob#readme";
      url = "";
      synopsis = "Simple projects generator";
      description = "See README at <https://github.com/GianlucaGuarini/rob/blob/develop/README.md>";
      buildType = "Simple";
    };
    components = {
      "rob" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.fortytwo)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.pathwalk)
          (hsPkgs.Glob)
          (hsPkgs.yaml)
          (hsPkgs.vector)
          (hsPkgs.ede)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.cmdargs)
          (hsPkgs.ansi-terminal)
          (hsPkgs.bytestring)
          (hsPkgs.time)
        ];
      };
      exes = {
        "rob" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.base)
            (hsPkgs.rob)
          ];
        };
      };
      tests = {
        "rob-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.rob)
          ];
        };
      };
    };
  }