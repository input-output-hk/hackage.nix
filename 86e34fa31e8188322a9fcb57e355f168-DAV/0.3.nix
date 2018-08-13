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
        name = "DAV";
        version = "0.3";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2012  Clint Adams";
      maintainer = "clint@debian.org";
      author = "Clint Adams";
      homepage = "http://floss.scru.org/hDAV";
      url = "";
      synopsis = "RFC 4918 WebDAV support";
      description = "This is a library for the Web Distributed Authoring and Versioning\n(WebDAV) extensions to HTTP.  At present it supports a very small\nsubset of client functionality.\n\nIn addition, there is an executable, hdav, which can be used for\ncommand-line operation.";
      buildType = "Simple";
    };
    components = {
      "DAV" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.lifted-base)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-hamlet)
        ];
      };
      exes = {
        "hdav" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.lifted-base)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-hamlet)
          ];
        };
      };
    };
  }