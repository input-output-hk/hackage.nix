{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = {
        name = "ihaskell-diagrams";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "andrew.gibiansky@gmail.com";
      author = "Andrew Gibiansky";
      homepage = "http://www.github.com/gibiansky/ihaskell";
      url = "";
      synopsis = "IHaskell display instances for diagram types";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ihaskell-diagrams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.diagrams)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-cairo)
          (hsPkgs.ihaskell)
        ];
      };
    };
  }