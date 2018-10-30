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
      specVersion = "1.8";
      identifier = {
        name = "revdectime";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "kamil.stachowski@gmail.com";
      author = "Kamil Stachowski";
      homepage = "";
      url = "";
      synopsis = "A French revolutionary decimal time (metric) clock";
      description = "A French revolutionary decimal time (metric) clock";
      buildType = "Simple";
    };
    components = {
      exes = {
        "revdectime" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.old-time)
          ];
        };
      };
    };
  }