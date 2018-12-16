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
      specVersion = "1.10";
      identifier = {
        name = "gli";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Mrinmoy Das";
      maintainer = "mrinmoy.das91@gmail.com";
      author = "goromlagche";
      homepage = "https://github.com/goromlagche/gli#readme";
      url = "";
      synopsis = "Tiny cli to fetch PR info from gitlab";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.friendly-time)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.http-client-tls)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.network-uri)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "gli" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gli)
          ];
        };
      };
      tests = {
        "gli-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gli)
          ];
        };
      };
    };
  }