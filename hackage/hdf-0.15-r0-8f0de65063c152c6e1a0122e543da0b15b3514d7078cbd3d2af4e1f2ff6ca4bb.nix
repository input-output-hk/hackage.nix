{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hdf";
        version = "0.15";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2006-2014";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/t/hdf";
      url = "";
      synopsis = "HDF: Uniform Rate Audio Signal Processing in Haskell";
      description = "Haskell data flow library for audio processing.\nRequires either the @RDL@ UGen from @sc3-rdu@ or\nthe @jack-dl@ host from @rju@.\n\nSee <http://rd.slavepianos.org/t/sc3-rdu>\nor <http://rd.slavepianos.org/t/rju>.";
      buildType = "Simple";
    };
    components = {
      "hdf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.fgl)
          (hsPkgs.fgl-visualize)
          (hsPkgs.filepath)
          (hsPkgs.hosc)
          (hsPkgs.hsc3)
          (hsPkgs.murmur-hash)
          (hsPkgs.process)
          (hsPkgs.split)
          (hsPkgs.transformers)
        ];
      };
    };
  }