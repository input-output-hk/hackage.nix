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
      specVersion = "0";
      identifier = {
        name = "simseq";
        version = "0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://malde.org/~ketil/";
      url = "";
      synopsis = "Simulate sequencing with different models for priming and errors";
      description = "This is a simulator that can generate simulated sequences -- primarily EST type sequences,\nbut quite possibly other types as well. Mail me for further information on usage etc.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "simseq" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bio)
            (hsPkgs.random)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }