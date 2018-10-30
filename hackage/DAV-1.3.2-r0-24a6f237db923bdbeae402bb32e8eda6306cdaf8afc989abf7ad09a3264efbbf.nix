{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      network-uri = true;
      mtl-compat = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "DAV";
        version = "1.3.2";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2012-2018  Clint Adams";
      maintainer = "clint@debian.org";
      author = "Clint Adams";
      homepage = "http://floss.scru.org/hDAV";
      url = "";
      synopsis = "RFC 4918 WebDAV support";
      description = "This is a library for the Web Distributed Authoring and Versioning\n(WebDAV) extensions to HTTP.  At present it supports a very small\nsubset of client functionality.\n\nIn addition, there is an executable, hdav, which can be used for\ncommand-line operation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-compat)
          (hsPkgs.utf8-string)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-hamlet)
        ] ++ (if flags.mtl-compat
          then [
            (hsPkgs.mtl)
            (hsPkgs.mtl-compat)
          ]
          else [ (hsPkgs.mtl) ]);
      };
      exes = {
        "hdav" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.haskeline)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.transformers-compat)
            (hsPkgs.utf8-string)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-hamlet)
          ] ++ (if flags.mtl-compat
            then [
              (hsPkgs.mtl)
              (hsPkgs.mtl-compat)
            ]
            else [
              (hsPkgs.mtl)
            ])) ++ (if flags.network-uri
            then [
              (hsPkgs.network-uri)
              (hsPkgs.network)
            ]
            else [ (hsPkgs.network) ]);
        };
      };
    };
  }