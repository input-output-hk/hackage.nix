{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "sha-streams";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thu@hypered.io";
      author = "Vo Minh Thu";
      homepage = "https://github.com/noteed/sha-streams";
      url = "";
      synopsis = "SHA hashes for io-streams.";
      description = "SHA hashes for io-streams.";
      buildType = "Simple";
    };
    components = {
      "sha-streams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.io-streams)
          (hsPkgs.SHA)
        ];
      };
      exes = {
        "sha-streams" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.io-streams)
            (hsPkgs.SHA)
            (hsPkgs.sha-streams)
          ];
        };
      };
    };
  }