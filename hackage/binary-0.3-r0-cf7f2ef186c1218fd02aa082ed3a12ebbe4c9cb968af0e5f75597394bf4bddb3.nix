{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "binary"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Kolmodin";
      author = "Lennart Kolmodin <kolmodin@dtek.chalmers.se>";
      homepage = "http://www.cse.unsw.edu.au/~dons/binary.html";
      url = "";
      synopsis = "Binary serialization for Haskell values using lazy ByteStrings";
      description = "Efficient, pure binary serialisation using lazy ByteStrings.\nHaskell values may be encoded to and form binary formats,\nwritten to disk as binary, or set over the network.";
      buildType = "Custom";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }