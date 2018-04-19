{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vk-aws-route53";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "MemCachier, Inc <code@memcachier.com>.";
        author = "Aristid Breitkreuz; AlephCloud Systems, Inc; MemCachier, Inc";
        homepage = "";
        url = "";
        synopsis = "Amazon Route53 DNS service plugin for the aws package.";
        description = "Amazon Route53 DNS service plugin for the aws package.";
        buildType = "Simple";
      };
      components = {
        vk-aws-route53 = {
          depends  = [
            hsPkgs.aws
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.old-locale
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.time
            hsPkgs.xml-conduit
            hsPkgs.xml-hamlet
          ];
        };
      };
    }