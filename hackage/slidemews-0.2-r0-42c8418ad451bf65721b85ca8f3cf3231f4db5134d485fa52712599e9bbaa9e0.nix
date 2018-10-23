{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "slidemews";
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "m@j4.pe";
      author = "Jean-Alexandre Peyroux";
      homepage = "";
      url = "";
      synopsis = "ws convert markdown to reveal-js";
      description = "Simple WebService to convert markdown to reveal-js";
      buildType = "Simple";
    };
    components = {
      exes = {
        "slidemews" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.MonadCatchIO-transformers)
            (hsPkgs.mtl)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.aeson)
            (hsPkgs.pandoc)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }