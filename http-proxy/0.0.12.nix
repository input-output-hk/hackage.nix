{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      network-bytestring = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "http-proxy";
          version = "0.0.12";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "erikd@mega-nerd.com";
        author = "Michael Snoyman, Stephen Blackheath, Erik de Castro Lopo";
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
            hsPkgs.bytestring
            hsPkgs.wai
            hsPkgs.conduit
            hsPkgs.http-conduit
            hsPkgs.transformers
            hsPkgs.blaze-builder
            hsPkgs.http-types
            hsPkgs.case-insensitive
            hsPkgs.lifted-base
            hsPkgs.blaze-builder-conduit
            hsPkgs.tls
            hsPkgs.bytestring-lexing
            hsPkgs.base64-bytestring
            hsPkgs.resourcet
            hsPkgs.ghc-prim
          ] ++ (if _flags.network-bytestring
            then [
              hsPkgs.network
              hsPkgs.network-bytestring
            ]
            else [ hsPkgs.network ]);
        };
      };
    }