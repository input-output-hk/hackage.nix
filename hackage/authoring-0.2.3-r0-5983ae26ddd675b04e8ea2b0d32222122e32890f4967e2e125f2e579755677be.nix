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
      specVersion = "1.8";
      identifier = {
        name = "authoring";
        version = "0.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "(C) Takayuki Muranushi, 2013";
      maintainer = "muranushi@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "http://github.com/nushio3/authoring";
      url = "";
      synopsis = "A library for writing papers";
      description = "This package is a combinator library for writing papers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.citation-resolve)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.HaTeX)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
    };
  }