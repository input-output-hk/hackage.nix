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
        version = "0.7.8";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "kamil (a full stop) stachowski (an at sign) gmail (a full stop) com";
      author = "Kamil Stachowski";
      homepage = "";
      url = "";
      synopsis = "A 'ten past six' style clock";
      description = "A clock and timer that tell the time in a more human way (the 'ten past six' style)";
      buildType = "Simple";
    };
    components = {
      "fuzzytime" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "fuzzytime" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.old-time)
            (hsPkgs.process)
          ];
        };
      };
    };
  }