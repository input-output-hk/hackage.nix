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
        name = "scp-streams";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thu@hypered.io";
      author = "Vo Minh Thu";
      homepage = "https://github.com/noteed/scp-streams";
      url = "";
      synopsis = "An SCP protocol implementation.";
      description = "An SCP protocol implementation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.io-streams)
          (hsPkgs.process)
        ];
      };
      exes = {
        "scp-streams" = {
          depends  = [
            (hsPkgs.cmdargs)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.io-streams)
            (hsPkgs.scp-streams)
            (hsPkgs.SHA)
            (hsPkgs.sha-streams)
            (hsPkgs.unix)
          ];
        };
        "scp-broken-upload" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.io-streams)
            (hsPkgs.scp-streams)
          ];
        };
      };
      tests = {
        "run-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.io-streams)
            (hsPkgs.scp-streams)
          ];
        };
      };
    };
  }