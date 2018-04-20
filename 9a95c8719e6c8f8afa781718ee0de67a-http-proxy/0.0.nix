{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-bytestring = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "http-proxy";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "erikd@mega-nerd.com";
        author = "Michael Snoyman, Stephen Blackheath, Erik de Castro Lopo";
        homepage = "https://github.com/erikd/http-proxy";
        url = "";
        synopsis = "A library for writing HTTP and HTTPS proxies";
        description = "http-proxy is a library for writing HTTP and HTTPS proxies.\n\nUse of the enumerator library provides file streaming from the upstream server\nthrough the proxy to the client program. Memory usage of the proxy depends on\nnumber of files being downlaoded simultaneously, not the size of the files\nbeing downloaded.\n\nEventually, features like logging, request re-writing, disk caching etc will\nbe made available via caller provided functions in the Settings data type.";
        buildType = "Simple";
      };
      components = {
        http-proxy = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.wai
            hsPkgs.enumerator
            hsPkgs.http-enumerator
            hsPkgs.blaze-builder-enumerator
            hsPkgs.transformers
            hsPkgs.blaze-builder
            hsPkgs.http-types
            hsPkgs.case-insensitive
            hsPkgs.unix-compat
          ] ++ (if _flags.network-bytestring
            then [
              hsPkgs.network
              hsPkgs.network-bytestring
            ]
            else [ hsPkgs.network ]);
        };
      };
    }