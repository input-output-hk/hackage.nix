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
        name = "funcons-intgen";
        version = "0.2.0.1";
      };
      license = "MIT";
      copyright = "Copyright (C) 2015 L. Thomas van Binsbergen and Neil Schulthorpe";
      maintainer = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>";
      author = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>, Neil Sculthorpe <n.a.sculthorpe@swansea.ac.uk>";
      homepage = "http://plancomps.org";
      url = "";
      synopsis = "Generate Funcons interpreters from CBS description files";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cbsc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.split)
            (hsPkgs.pretty)
            (hsPkgs.uu-cco)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.funcons-tools)
            (hsPkgs.gll)
            (hsPkgs.regex-applicative)
            (hsPkgs.iml-tools)
            (hsPkgs.funcons-values)
          ];
        };
      };
    };
  }