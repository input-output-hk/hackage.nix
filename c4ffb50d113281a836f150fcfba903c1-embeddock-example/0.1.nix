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
        name = "embeddock-example";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "muranushi@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "https://github.com/nushio3/embeddock-example";
      url = "";
      synopsis = "Example of using embeddock.";
      description = "embeddock is a Haskell source-code preprocessor.\nIt allows you to embed computer-generated\nvalues in the documentation.";
      buildType = "Simple";
    };
    components = {
      "embeddock-example" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.embeddock)
          (hsPkgs.time)
        ];
      };
    };
  }