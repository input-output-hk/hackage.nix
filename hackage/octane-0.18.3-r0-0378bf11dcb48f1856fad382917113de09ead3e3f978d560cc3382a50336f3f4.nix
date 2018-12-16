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
        name = "octane";
        version = "0.18.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "https://github.com/tfausak/octane#readme";
      url = "";
      synopsis = "Parse Rocket League replays.";
      description = "Octane parses Rocket League replays.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bimap)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.file-embed)
          (hsPkgs.overloaded-records)
          (hsPkgs.rattletrap)
          (hsPkgs.text)
        ];
      };
      exes = {
        "octane" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.octane)
          ];
        };
      };
    };
  }