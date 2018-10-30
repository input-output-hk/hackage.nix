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
        name = "uniform-io";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "marcos@marcosdumay.com";
      author = "Marcos Dumay de Medeiros";
      homepage = "https://sealgram.com/git/haskell/uniform-io";
      url = "";
      synopsis = "Uniform IO over files, network, watever.";
      description = "This library defines a typeclass for abstracting\nthe differences between the several IO channels available.\nIt also includes implementations for standard IO, files and\nnetwork IO, and easy to use TLS wrapping of any of those.\nCurrently TLS only wraps sockets, std streams are not exported\nand there's no support for TLS certificate verification. Those\nare all planned to be added soon.\nRequires a '-threaded' compiler switch.";
      buildType = "Simple";
    };
    components = {
      "library" = {
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
        libs = [ (pkgs."ssl") ];
      };
    };
  }