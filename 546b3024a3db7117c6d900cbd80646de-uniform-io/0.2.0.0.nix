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
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "marcos@marcosdumay.com";
      author = "Marcos Dumay de Medeiros";
      homepage = "https://sealgram.com/git/haskell/uniform-io";
      url = "";
      synopsis = "Uniform IO over files, network, watever.";
      description = "This library defines a typeclass for abstracting\nthe differences between the several IO channels available.\nIt also includes implementations for standard IO, files and\nnetwork IO, and easy to use TLS wrapping of any of those.\nCurrently TLS only wraps sockets, and there's no support\nfor TLS certificate verification. Those are planned\nto be added soon.\nRequires a '-threaded' compiler switch.";
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