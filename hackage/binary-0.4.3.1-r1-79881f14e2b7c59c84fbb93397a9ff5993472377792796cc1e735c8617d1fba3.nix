{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      bytestring-in-base = true;
      split-base = true;
      applicative-in-base = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "binary";
        version = "0.4.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Kolmodin, Don Stewart <dons@galois.com>";
      author = "Lennart Kolmodin <kolmodin@dtek.chalmers.se>";
      homepage = "http://code.haskell.org/binary/";
      url = "";
      synopsis = "Binary serialisation for Haskell values using lazy ByteStrings";
      description = "Efficient, pure binary serialisation using lazy ByteStrings.\nHaskell values may be encoded to and from binary formats,\nwritten to disk as binary, or sent over the network.\nSerialisation speeds of over 1 G\\/sec have been observed,\nso this library should be suitable for high performance\nscenarios.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((if flags.bytestring-in-base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ]) ++ (if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ])) ++ [
          (hsPkgs.base)
        ];
      };
    };
  }