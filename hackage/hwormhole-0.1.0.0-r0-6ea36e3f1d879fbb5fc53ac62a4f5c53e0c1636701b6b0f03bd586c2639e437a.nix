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
      specVersion = "1.24";
      identifier = {
        name = "hwormhole";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2018 Least Authority TFA Gmbh";
      maintainer = "ram@leastauthority.com";
      author = "Ramakrishnan Muthukrishnan";
      homepage = "";
      url = "";
      synopsis = "magic-wormhole client";
      description = "A secure way to send files over the Internet using the magic-wormhole protocol";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskeline)
          (hsPkgs.hex)
          (hsPkgs.magic-wormhole)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-info)
          (hsPkgs.pathwalk)
          (hsPkgs.protolude)
          (hsPkgs.random)
          (hsPkgs.saltine)
          (hsPkgs.spake2)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix-compat)
          (hsPkgs.zip)
        ];
      };
      exes = {
        "hwormhole-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.binary)
            (hsPkgs.hwormhole)
            (hsPkgs.optparse-applicative)
            (hsPkgs.protolude)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "hwormhole-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.binary)
            (hsPkgs.binary-conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.text)
            (hsPkgs.protolude)
            (hsPkgs.hspec)
            (hsPkgs.saltine)
            (hsPkgs.hwormhole)
            (hsPkgs.magic-wormhole)
            (hsPkgs.hedgehog)
          ];
        };
      };
    };
  }