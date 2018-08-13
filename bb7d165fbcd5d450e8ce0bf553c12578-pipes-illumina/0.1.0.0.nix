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
        name = "pipes-illumina";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014-2015";
      maintainer = "ropoctl@gmail.com";
      author = "Rob O'Callahan";
      homepage = "http://github.com/rcallahan/pipes-illumina";
      url = "";
      synopsis = "Illumina NGS data processing";
      description = "Streaming of Bcl and other Illumina file formats";
      buildType = "Simple";
    };
    components = {
      "pipes-illumina" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.pipes)
          (hsPkgs.pipes-bgzf)
        ];
      };
    };
  }