{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "http-proxy";
          version = "0.1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "erikd@mega-nerd.com";
        author = "Michael Snoyman, Erik de Castro Lopo";
        homepage = "https://github.com/erikd/http-proxy";
        url = "";
        synopsis = "A library for writing HTTP and HTTPS proxies";
        description = "http-proxy is a library for writing HTTP and HTTPS proxies.\n\nUse of the Conduit library provides file streaming via the proxy in both\ndirections. Memory usage of the proxy scales linearly with the number of\nsimultaneous connections and is independent of the size of the files being\nuploaded or downloaded.\n\nThe Settings data type provided by the library allows the caller to supply\na functions for exception reporting and request re-writing.  Eventually, this\ncapability will be expanded to allow optional logging, disk caching etc.";
        buildType = "Simple";
      };
      components = {
        http-proxy = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.bytestring-lexing
            hsPkgs.case-insensitive
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.http-client
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.resourcet
            hsPkgs.tls
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.wai-conduit
            hsPkgs.warp
            hsPkgs.warp-tls
          ];
        };
        tests = {
          testsuite = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.bytestring-lexing
              hsPkgs.case-insensitive
              hsPkgs.conduit
              hsPkgs.connection
              hsPkgs.conduit-extra
              hsPkgs.http-client
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.hspec
              hsPkgs.network
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.vault
              hsPkgs.wai
              hsPkgs.wai-conduit
              hsPkgs.warp
              hsPkgs.warp-tls
            ];
          };
        };
      };
    }