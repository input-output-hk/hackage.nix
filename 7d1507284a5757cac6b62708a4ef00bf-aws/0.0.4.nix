{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "aws";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2010 Aristid Breitkreuz";
        maintainer = "aristidb@googlemail.com";
        author = "Aristid Breitkreuz";
        homepage = "http://github.com/aristidb/aws";
        url = "";
        synopsis = "Amazon Web Services (AWS) for Haskell";
        description = "Bindings for Amazon Web Services (AWS), with the aim of supporting all AWS services.";
        buildType = "Simple";
      };
      components = {
        aws = {
          depends  = [
            hsPkgs.attempt
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.crypto-api
            hsPkgs.cryptohash
            hsPkgs.directory
            hsPkgs.enumerator
            hsPkgs.failure
            hsPkgs.filepath
            hsPkgs.http-enumerator
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.shortcircuit
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.utf8-string
            hsPkgs.xml-enumerator
          ];
        };
      };
    }