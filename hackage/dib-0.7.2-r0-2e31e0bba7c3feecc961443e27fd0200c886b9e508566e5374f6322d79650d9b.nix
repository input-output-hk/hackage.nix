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
        name = "dib";
        version = "0.7.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Brett Lajzer";
      author = "Brett Lajzer";
      homepage = "";
      url = "";
      synopsis = "A simple, forward build system.";
      description = "Dib is a simple, forward build system consisting of a library and a driver application. Build scripts are written in Haskell instead of a bespoke language.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.time)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.digest)
          (hsPkgs.ansi-terminal)
        ];
      };
      exes = {
        "dib" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
          ];
        };
      };
    };
  }