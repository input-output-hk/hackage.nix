{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "binary-strict";
        version = "0.4.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dominic Steinitz <dominic@steinitz.org>";
      author = "Lennart Kolmodin <kolmodin@dtek.chalmers.se>";
      homepage = "http://code.haskell.org/binary-low-level";
      url = "";
      synopsis = "Binary deserialisation using strict ByteStrings";
      description = "This is a strict version of the Get monad from the binary\npackage. It's pretty much just a copy and paste job from the\noriginal source code. The binary team are currently unsure\nabout their future plans w.r.t. strictness, so this is just a\nstop gap measure. See\n<http://www.haskell.org/haskellwiki/DealingWithBinaryData> for\ndocumentation.";
      buildType = "Simple";
    };
    components = {
      "binary-strict" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
        ];
      };
    };
  }