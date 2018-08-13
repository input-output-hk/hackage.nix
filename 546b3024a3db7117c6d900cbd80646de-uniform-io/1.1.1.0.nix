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
      specVersion = "1.10";
      identifier = {
        name = "uniform-io";
        version = "1.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "marcos@marcosdumay.com";
      author = "Marcos Dumay de Medeiros";
      homepage = "https://sealgram.com/git/haskell/uniform-io";
      url = "";
      synopsis = "Uniform IO over files, network, anything.";
      description = "This library defines a typeclass for abstracting\nthe differences between the several IO channels available.\nIt also includes implementations for standard IO, files and\nnetwork IO, and easy to use TLS wrapping of network data,\nwith an extensible interface for user supplied instances.\nCurrently there's no support for TLS certificate verification.\nThat is planned to be added soon.\nRequires a '-threaded' compiler switch.";
      buildType = "Simple";
    };
    components = {
      "uniform-io" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.iproute)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.transformers)
          (hsPkgs.word8)
          (hsPkgs.attoparsec)
          (hsPkgs.data-default-class)
        ];
        libs = [
          (pkgs.ssl)
          (pkgs.crypto)
          (pkgs.pthread)
        ];
      };
      tests = {
        "targets" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.bytestring)
            (hsPkgs.uniform-io)
          ];
        };
        "blocking" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.uniform-io)
          ];
        };
      };
    };
  }