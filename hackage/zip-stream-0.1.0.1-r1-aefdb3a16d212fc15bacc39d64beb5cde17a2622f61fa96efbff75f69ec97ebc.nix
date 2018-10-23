{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "zip-stream";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017";
      maintainer = "dylan@dylex.net";
      author = "Dylan Simon";
      homepage = "";
      url = "";
      synopsis = "ZIP archive streaming using conduits";
      description = "Process (extract and create) zip files as streams (e.g., over the network), accessing contained files without having to write the zip file to disk (unlike zip-conduit).";
      buildType = "Simple";
    };
    components = {
      "zip-stream" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.binary-conduit)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.digest)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.primitive)
          (hsPkgs.resourcet)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
          (hsPkgs.zlib)
        ];
      };
      exes = {
        "unzip-stream" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.zip-stream)
          ];
        };
        "zip-stream" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.resourcet)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.zip-stream)
          ];
        };
      };
    };
  }