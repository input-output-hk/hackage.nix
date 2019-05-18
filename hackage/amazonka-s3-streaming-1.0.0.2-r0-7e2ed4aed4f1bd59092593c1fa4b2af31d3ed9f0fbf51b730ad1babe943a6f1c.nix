{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { s3upload-exe = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-s3-streaming"; version = "1.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Alex Mason, Copyright (c) 2016 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
      maintainer = "axman6+hackage@gmail.com";
      author = "Alex Mason";
      homepage = "https://github.com/Axman6/amazonka-s3-streaming#readme";
      url = "";
      synopsis = "Provides conduits to upload data to S3 using the Multipart API";
      description = "Provides a conduit based streaming interface and a concurrent interface to\nuploading data to S3 using the Multipart API. Also provides method to upload\nfiles or bytestrings of known size in parallel. Please see README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-s3)
          (hsPkgs.conduit)
          (hsPkgs.bytestring)
          (hsPkgs.mmorph)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.exceptions)
          (hsPkgs.dlist)
          (hsPkgs.async)
          (hsPkgs.http-client)
          ];
        };
      exes = {
        "s3upload" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-s3)
            (hsPkgs.amazonka-s3-streaming)
            (hsPkgs.conduit-extra)
            (hsPkgs.conduit)
            (hsPkgs.text)
            ];
          };
        };
      };
    }