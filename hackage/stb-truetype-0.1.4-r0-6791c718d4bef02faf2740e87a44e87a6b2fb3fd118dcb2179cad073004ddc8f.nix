{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.24";
      identifier = { name = "stb-truetype"; version = "0.1.4"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "A wrapper around Sean Barrett's TrueType rasterizer library.";
      description = "A wrapper around Sean Barrett's TrueType rasterizer library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          ];
        };
      };
    }