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
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "paul@statusfailed.com";
      author = "Paul Wilson";
      homepage = "";
      url = "";
      synopsis = "A Snaplet for the Riak database";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.data-lens-template)
          (hsPkgs.data-lens)
          (hsPkgs.riak)
          (hsPkgs.time)
        ];
      };
    };
  }