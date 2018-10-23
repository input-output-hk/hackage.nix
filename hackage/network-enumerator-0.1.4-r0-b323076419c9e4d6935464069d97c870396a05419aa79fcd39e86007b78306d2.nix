{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      network-includes-bytestring = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "network-enumerator";
        version = "0.1.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/network-enumerator/";
      url = "";
      synopsis = "Enumerators for network sockets";
      description = "";
      buildType = "Simple";
    };
    components = {
      "network-enumerator" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.enumerator)
        ] ++ (if flags.network-includes-bytestring
          then [ (hsPkgs.network) ]
          else [
            (hsPkgs.network)
            (hsPkgs.network-bytestring)
          ]);
      };
    };
  }