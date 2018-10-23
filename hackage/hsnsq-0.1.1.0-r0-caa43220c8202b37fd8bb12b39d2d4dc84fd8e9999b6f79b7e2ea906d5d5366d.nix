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
        name = "hsnsq";
        version = "0.1.1.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "berens.paul@gmail.com";
      author = "Paul Berens";
      homepage = "https://github.com/gamelost/hsnsq";
      url = "";
      synopsis = "Haskell NSQ client.";
      description = "Currently a primitive NSQ client, it implements the very basics of an NSQ client for communicating with single NSQ servers.";
      buildType = "Simple";
    };
    components = {
      "hsnsq" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-binary)
          (hsPkgs.aeson)
          (hsPkgs.pipes)
          (hsPkgs.pipes-attoparsec)
          (hsPkgs.pipes-network)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.stm-chans)
          (hsPkgs.stm)
          (hsPkgs.async)
          (hsPkgs.hslogger)
          (hsPkgs.hostname)
        ];
      };
      exes = {
        "nsq-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-binary)
            (hsPkgs.aeson)
            (hsPkgs.pipes)
            (hsPkgs.pipes-attoparsec)
            (hsPkgs.pipes-network)
            (hsPkgs.network)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.stm-chans)
            (hsPkgs.stm)
            (hsPkgs.async)
            (hsPkgs.hslogger)
            (hsPkgs.hostname)
          ];
        };
      };
    };
  }