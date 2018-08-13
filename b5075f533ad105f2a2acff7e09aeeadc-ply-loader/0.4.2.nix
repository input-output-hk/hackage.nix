{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ply-loader";
        version = "0.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Anthony Cowley 2012";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "PLY file loader.";
      description = "PLY is a lightweight file format for representing 3D\ngeometry. The library includes support for\nplacing mesh data into a consistent coordinate\nframe using Stanford's @.conf@ file format. See\n/The Stanford 3D Scanning Repository/\n<http://graphics.stanford.edu/data/3Dscanrep/>\nfor more information.\nThis package provides a library for loading PLY\ndata, and an executable, @ply2bin@, for dumping\nall vertex data referenced by a @.conf@ file to a\nflat binary file comprising an array of single\nprecision float triples. Usage: @ply2bin confFile\noutputFile@.";
      buildType = "Simple";
    };
    components = {
      "ply-loader" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.linear)
          (hsPkgs.lens)
          (hsPkgs.vector)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.parallel-io)
          (hsPkgs.transformers)
          (hsPkgs.cereal)
        ];
      };
      exes = {
        "ply2bin" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.linear)
            (hsPkgs.vector)
            (hsPkgs.ply-loader)
          ];
        };
      };
    };
  }