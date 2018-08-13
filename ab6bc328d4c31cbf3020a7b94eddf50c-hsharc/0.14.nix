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
      specVersion = "1.8";
      identifier = {
        name = "hsharc";
        version = "0.14";
      };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2007-2013";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hsharc";
      url = "";
      synopsis = "Haskell SHARC bindings";
      description = "Parser for SHARC data (the Sandell Harmonic Archive)";
      buildType = "Simple";
    };
    components = {
      "hsharc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.xml)
        ];
      };
    };
  }