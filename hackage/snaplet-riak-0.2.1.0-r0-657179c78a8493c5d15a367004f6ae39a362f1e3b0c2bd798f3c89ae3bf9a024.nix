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
      specVersion = "1.8";
      identifier = {
        name = "snaplet-riak";
        version = "0.2.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "paul@statusfailed.com";
      author = "Paul Wilson";
      homepage = "http://github.com/statusfailed/snaplet-riak";
      url = "";
      synopsis = "A Snaplet for the Riak database";
      description = "A Snaplet allowing easy use of the Riak database within\nthe Snap framework.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.aeson)
          (hsPkgs.data-lens)
          (hsPkgs.data-lens-template)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.riak)
          (hsPkgs.riak-protobuf)
          (hsPkgs.time)
        ];
      };
    };
  }