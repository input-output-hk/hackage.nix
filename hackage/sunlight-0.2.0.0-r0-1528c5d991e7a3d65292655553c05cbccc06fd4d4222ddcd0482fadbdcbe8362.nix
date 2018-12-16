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
        name = "sunlight";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/sunlight";
      url = "";
      synopsis = "Test Cabalized package against multiple dependency versions";
      description = "sunlight checks your Cabalized package and ensures that it actually\nbuilds and passes its tests, even against mulitple dependency\nversions specified in your Cabal file.  For example, your Cabal file\nmight say that your package builds against base-4.5.1.0\nand base-4.6.0.1.  With\nsunlight you can automatically verify that this is actually the case.\n\nFor more information, please see\n\n<http://www.github.com/massysett/sunlight>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.process)
          (hsPkgs.tuple)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.random)
        ];
      };
    };
  }