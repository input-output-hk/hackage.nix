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
        name = "attoparsec-conduit";
        version = "1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Consume attoparsec parsers via conduit. (deprecated)";
      description = "Consume attoparsec parsers via conduit.";
      buildType = "Simple";
    };
    components = {
      "attoparsec-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
        ];
      };
    };
  }