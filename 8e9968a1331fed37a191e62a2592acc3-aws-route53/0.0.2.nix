{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aws-route53";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "code@memcachier.com";
        author = "Aristid Breitkreuz; AlephCloud Systems, Inc; MemCachier, Inc";
        homepage = "";
        url = "";
        synopsis = "Route53 plugin for the aws package";
        description = "Route53 plugin for the aws package";
        buildType = "Simple";
      };
      components = {
        aws-route53 = {
          depends  = [
            hsPkgs.aws
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.failure
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.old-locale
            hsPkgs.text
            hsPkgs.time
            hsPkgs.xml-conduit
            hsPkgs.xml-hamlet
          ];
        };
      };
    }