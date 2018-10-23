{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fuzzytime";
        version = "0.5";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "kamil.stachowski@gmail.com";
      author = "Kamil Stachowski";
      homepage = "";
      url = "";
      synopsis = "A clock which tells the time in a more familiar way";
      description = "A clock which tells the time in a more familiar way";
      buildType = "Simple";
    };
    components = {
      exes = {
        "fuzzytime" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.old-time)
          ];
        };
      };
    };
  }