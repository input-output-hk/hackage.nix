{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      splitbase = true;
      base4 = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "stb-image";
        version = "0.2";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "A wrapper around Sean Barrett's JPEG/PNG decoder";
      description = "Partial implementation of JPEG, PNG, TGA, BMP, PSD decoders,\nwith a really simple API.";
      buildType = "Simple";
    };
    components = {
      "stb-image" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.bytestring)
            (hsPkgs.bitmap)
          ] ++ [ (hsPkgs.base) ]
          else [ (hsPkgs.base) ];
      };
    };
  }