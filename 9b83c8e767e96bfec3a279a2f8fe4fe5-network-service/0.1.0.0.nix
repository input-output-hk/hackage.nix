{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      example = false;
      documentation = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "network-service";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2014 Moritz Angermann";
      maintainer = "moritz@lichtzwerge.de";
      author = "Moritz Angermann";
      homepage = "https://github.com/angerman/network-service";
      url = "";
      synopsis = "Provide a service at the data type level.";
      description = "Thin very layer over network-simple, that allows to write\na service that can be communicated with at the data level.\nMakes it trivial to build a services upon a data type,\nprovided a ByteString serialization can be given.";
      buildType = "Simple";
    };
    components = {
      "network-service" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
        ] ++ pkgs.lib.optional (_flags.documentation) (hsPkgs.hscolour);
      };
      exes = {
        "echo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.network-simple)
            (hsPkgs.bytestring)
            (hsPkgs.base64-bytestring)
          ];
        };
      };
    };
  }