{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hsc3-sf"; version = "0.7"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2006-2009";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/f/924736/";
      url = "";
      synopsis = "Haskell SuperCollider SoundFile";
      description = "Trivial NeXT/Sun sound file input/output.\nFor almost all use cases please see Stefan\nKersten's hsndfile package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.hosc) ];
        };
      };
    }