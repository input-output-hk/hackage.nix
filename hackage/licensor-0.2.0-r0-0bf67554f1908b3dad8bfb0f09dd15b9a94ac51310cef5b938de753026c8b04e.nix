{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.21";
      identifier = {
        name = "licensor";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "2016 Juan Pedro Villa Isaza";
      maintainer = "Juan Pedro Villa Isaza <jpvillaisaza@gmail.com>";
      author = "Juan Pedro Villa Isaza <jpvillaisaza@gmail.com>";
      homepage = "https://github.com/jpvillaisaza/licensor";
      url = "";
      synopsis = "A license compatibility helper";
      description = "A license compatibility helper.";
      buildType = "Simple";
    };
    components = {
      "licensor" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.http-conduit)
          (hsPkgs.process)
        ];
      };
      exes = {
        "licensor" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.licensor)
          ];
        };
      };
    };
  }