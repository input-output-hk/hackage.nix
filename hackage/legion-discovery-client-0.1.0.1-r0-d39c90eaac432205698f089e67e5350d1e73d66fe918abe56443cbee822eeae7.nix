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
        name = "legion-discovery-client";
        version = "0.1.0.1";
      };
      license = "Apache-2.0";
      copyright = "2016 Rick Owens";
      maintainer = "rick@owensmurray.com";
      author = "Rick Owens";
      homepage = "https://github.com/owensmurray/legion-discovery-client#readme";
      url = "";
      synopsis = "Client library for communicating with legion-discovery.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.Cabal)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.load-balancing)
          (hsPkgs.network)
          (hsPkgs.text)
        ];
      };
      tests = {
        "legion-discovery-client-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.legion-discovery-client)
          ];
        };
      };
    };
  }