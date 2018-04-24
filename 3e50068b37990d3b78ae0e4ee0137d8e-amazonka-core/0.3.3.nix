{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      old-locale = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-core";
          version = "0.3.3";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2015 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Core functionality and data types for Amazonka libraries.";
        description = "Core functionality, serialisation primitives, and data types for\nAmazonka related Amazon Web Services SDKs.\n\nThe external interface of this library is stable with respect to the\ndownstream Amazonka libraries, only, and as such is probably not suitable\nfor use in non-Amazonka projects.\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        amazonka-core = {
          depends  = ([
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.base64-bytestring
            hsPkgs.bifunctors
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.cryptohash
            hsPkgs.data-default-class
            hsPkgs.hashable
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.mmorph
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.scientific
            hsPkgs.semigroups
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.xml-conduit
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.9")) hsPkgs.nats) ++ (if _flags.old-locale
            then [
              hsPkgs.old-locale
              hsPkgs.time
            ]
            else [ hsPkgs.time ]);
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.amazonka-core
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.template-haskell
              hsPkgs.text
            ];
          };
        };
      };
    }