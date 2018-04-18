{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      s3upload-exe = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-s3-streaming";
          version = "0.2.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
        maintainer = "Alex.Mason@data61.csiro.au";
        author = "Alex Mason";
        homepage = "https://github.com/Axman6/amazonka-s3-streaming#readme";
        url = "";
        synopsis = "Provides conduits to upload data to S3 using the Multipart API";
        description = "Provides a conduit based streaming interface and a concurrent interface to\nuploading data to S3 using the Multipart API. Also provides method to upload\nfiles or bytestrings of known size in parallel. Please see README.md.";
        buildType = "Simple";
      };
      components = {
        amazonka-s3-streaming = {
          depends  = ([
            hsPkgs.base
            hsPkgs.amazonka
            hsPkgs.amazonka-core
            hsPkgs.amazonka-s3
            hsPkgs.resourcet
            hsPkgs.conduit
            hsPkgs.bytestring
            hsPkgs.mmorph
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.exceptions
            hsPkgs.dlist
            hsPkgs.lifted-async
            hsPkgs.mmap
            hsPkgs.deepseq
            hsPkgs.http-client
          ] ++ optionals compiler.isGhc [
            hsPkgs.semigroups
            hsPkgs.transformers
          ]) ++ pkgs.lib.optional compiler.isGhc hsPkgs.foundation;
        };
        exes = {
          s3upload = {
            depends  = [
              hsPkgs.base
              hsPkgs.amazonka
              hsPkgs.amazonka-core
              hsPkgs.amazonka-s3
              hsPkgs.amazonka-s3-streaming
              hsPkgs.conduit-extra
              hsPkgs.conduit
              hsPkgs.bytestring
              hsPkgs.text
            ];
          };
        };
      };
    }