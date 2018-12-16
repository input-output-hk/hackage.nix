{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "omnicodec";
        version = "0.5";
      };
      license = "LicenseRef-GPL";
      copyright = "Magnus Therning, 2007-2011";
      maintainer = "magnus@therning.org";
      author = "Magnus Therning";
      homepage = "";
      url = "";
      synopsis = "data encoding and decoding command line utilities";
      description = "Two simple command line tools built on dataenc.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "odec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.dataenc)
          ];
        };
        "oenc" = {};
      };
    };
  }