{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "tensorflow-records-conduit";
          version = "0.1.0.0";
        };
        license = "LicenseRef-Apache";
        copyright = "Google Inc.";
        maintainer = "tensorflow-haskell@googlegroups.com";
        author = "TensorFlow authors";
        homepage = "https://github.com/tensorflow/haskell#readme";
        url = "";
        synopsis = "Conduit wrappers for TensorFlow.Records.";
        description = "Conduit wrappers for TensorFlow.Records.";
        buildType = "Simple";
      };
      components = {
        tensorflow-records-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal-conduit
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.exceptions
            hsPkgs.resourcet
            hsPkgs.tensorflow-records
          ];
        };
      };
    }