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
        name = "package-description-remote";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2015 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "http://github.com/yamadapc/stack-run-auto/package-description-remote";
      url = "";
      synopsis = "Fetches a 'GenericPackageDescription' from Hackage";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "package-description-remote" = {
        depends  = [
          (hsPkgs.Cabal)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.wreq)
        ];
      };
      tests = {
        "package-description-remote-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.package-description-remote)
          ];
        };
      };
    };
  }