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
        name = "hps";
        version = "0.11";
      };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2011";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape and others";
      homepage = "http://slavepianos.org/rd/?t=hps";
      url = "";
      synopsis = "Haskell Postscript";
      description = "Haskell library partially implementing the\npostscript drawing model.";
      buildType = "Simple";
    };
    components = {
      "hps" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "hps-fractals" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.random)
          ];
        };
      };
    };
  }