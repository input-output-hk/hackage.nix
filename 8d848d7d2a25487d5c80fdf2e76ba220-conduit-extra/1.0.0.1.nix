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
        name = "conduit-extra";
        version = "1.0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Temporary placeholder package.";
      description = "This package will soon contain much more functionality. This is a placeholder until the next release is ready.";
      buildType = "Simple";
    };
    components = {
      "conduit-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
        ];
      };
    };
  }