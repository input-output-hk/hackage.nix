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
          version = "1.2.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2015 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Core data types and functionality for Amazonka libraries.";
        description = "Core data types, functionality and serialisation primitives for\nAmazonka related Amazon Web Services SDKs.\n\nThe external interface of this library is stable with respect to the\ndownstream Amazonka libraries, only, and as such is not suitable\nfor use in non-Amazonka projects.";
        buildType = "Simple";
      };
      components = {
        amazonka-core = {
          depends  = ([
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.cryptonite
            hsPkgs.exceptions
            hsPkgs.hashable
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.memory
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.scientific
            hsPkgs.semigroups
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.unordered-containers
            hsPkgs.xml-conduit
            hsPkgs.xml-types
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
              hsPkgs.aeson
              hsPkgs.amazonka-core
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.http-types
              hsPkgs.lens
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.time
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-unicode
            ];
          };
        };
      };
    }