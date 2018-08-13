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
        name = "sphero";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "docks.cattlemen.stephen@blacksapphire.com";
      author = "Stephen Blackheath";
      homepage = "";
      url = "";
      synopsis = "Orbotix Sphero client library";
      description = "My nephew visited me at Christmas time.\nGuess what I wasted my time doing. :)\n\nSee examples directory for examples.";
      buildType = "Simple";
    };
    components = {
      "sphero" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cereal)
          (hsPkgs.simple-bluetooth)
        ];
      };
    };
  }