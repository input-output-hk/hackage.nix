{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "omnicodec"; version = "0.8"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Magnus Therning <magnus@therning.org>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Data encoding and decoding command line utilities";
      description = "Two simple command line tools built on sandi (http://hackage.haskell.org/package/sandi).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "odec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.conduit)
            (hsPkgs.sandi)
            (hsPkgs.transformers)
            ];
          };
        "oenc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.conduit)
            (hsPkgs.sandi)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }