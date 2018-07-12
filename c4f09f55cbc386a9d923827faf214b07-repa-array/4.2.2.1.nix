{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "repa-array";
          version = "4.2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The Repa Development Team";
        homepage = "http://repa.ouroborus.net";
        url = "";
        synopsis = "Bulk array representations and operators.";
        description = "NOTE: This is an ALPHA version of Repa 4. The API is not yet complete with\nrespect to Repa 3. Some important functions are still missing, and the docs\nmay not be up-to-date.";
        buildType = "Simple";
      };
      components = {
        "repa-array" = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
            hsPkgs.vector
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.double-conversion
            hsPkgs.text
            hsPkgs.repa-eval
            hsPkgs.repa-stream
            hsPkgs.repa-scalar
            hsPkgs.repa-convert
            hsPkgs.filelock
          ];
        };
      };
    }