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
        name = "fuzzytime";
        version = "0.4.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "kamil.stachowski@gmail.com";
      author = "Kamil Stachowski";
      homepage = "";
      url = "";
      synopsis = "Telling the time in a more humane way";
      description = "Telling the time in a more humane way";
      buildType = "Simple";
    };
    components = {
      exes = {
        "fuzzytime" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.old-time)
          ];
        };
      };
    };
  }