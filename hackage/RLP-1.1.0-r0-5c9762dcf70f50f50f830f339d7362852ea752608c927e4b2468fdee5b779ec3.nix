{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "RLP"; version = "1.1.0"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Javier Sagredo <jasataco@gmail.com>";
      author = "Javier Sagredo <jasataco@gmail.com>";
      homepage = "https://github.com/jasagredo/RLP";
      url = "";
      synopsis = "RLP serialization as defined in Ethereum Yellow Paper";
      description = "RLP serialization as defined in Ethereum Yellow Paper\nallowing the encoding of arbitrary data and the later\ndecoding of such data. Intended for use with Ethereum\ntransactions or data over the network.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.binary) (hsPkgs.bytestring) ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }