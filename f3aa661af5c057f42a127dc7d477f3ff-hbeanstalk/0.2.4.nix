{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hbeanstalk";
          version = "0.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2010, Greg Heartsfield";
        maintainer = "Greg Heartsfield <scsibug@imap.cc>";
        author = "Greg Heartsfield <scsibug@imap.cc>";
        homepage = "http://github.com/scsibug/hbeanstalk/";
        url = "";
        synopsis = "Client for the beanstalkd workqueue service.";
        description = "This is the hbeanstalk library.  It provides a client\ninterface to a beanstalkd server, allowing Haskell to be\na producer and/or a consumer of work items.  Let Haskell\ndo your heavy lifting!";
        buildType = "Simple";
      };
      components = {
        hbeanstalk = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.containers
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.attoparsec
          ];
        };
      };
    }