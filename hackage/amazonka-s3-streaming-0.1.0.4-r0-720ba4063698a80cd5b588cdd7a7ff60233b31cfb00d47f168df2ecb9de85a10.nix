{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "amazonka-s3-streaming"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
      maintainer = "Alex.Mason@data61.csiro.au";
      author = "Alex Mason";
      homepage = "https://github.com/Axman6/amazonka-s3-streaming#readme";
      url = "";
      synopsis = "Provides conduits to upload data to S3 using the Multipart API";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-s3)
          (hsPkgs.resourcet)
          (hsPkgs.conduit)
          (hsPkgs.bytestring)
          (hsPkgs.mmorph)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.exceptions)
          (hsPkgs.dlist)
          (hsPkgs.lifted-async)
          (hsPkgs.mmap)
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.11") [
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
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
            (hsPkgs.bytestring)
            (hsPkgs.text)
            ];
          };
        };
      };
    }