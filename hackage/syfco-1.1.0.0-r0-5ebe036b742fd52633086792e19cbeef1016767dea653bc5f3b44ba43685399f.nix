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
        name = "syfco";
        version = "1.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Felix Klein <klein@react.uni-saarland.de>";
      author = "Felix Klein <klein@react.uni-saarland.de>";
      homepage = "https://github.com/reactive-systems/syfco";
      url = "";
      synopsis = "Synthesis Format Conversion Tool / Library";
      description = "Library and tool for reading, manipulating and transforming synthesis specifications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.transformers)
          (hsPkgs.convertible)
        ];
      };
      exes = {
        "syfco" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.transformers)
            (hsPkgs.convertible)
          ];
        };
      };
    };
  }