{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hannahci";
        version = "0.1.4.0";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "elzairthesorcerer@gmail.com";
      author = "Philip Woods";
      homepage = "";
      url = "";
      synopsis = "Simple Continuous Integration/Deployment System";
      description = "";
      buildType = "Custom";
    };
    components = {
      exes = {
        "hannahci" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.formatting)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.process)
            (hsPkgs.scotty)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-middleware-static)
            (hsPkgs.unix-time)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }