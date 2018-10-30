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
        name = "docvim";
        version = "0.3.1.3";
      };
      license = "MIT";
      copyright = "2015-present Greg Hurrell";
      maintainer = "greg@hurrell.net";
      author = "Greg Hurrell";
      homepage = "https://github.com/wincent/docvim";
      url = "";
      synopsis = "Documentation generator for Vim plug-ins";
      description = "Produces Vim help and HTML (via Markdown) documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.dlist)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parsec)
          (hsPkgs.pretty-show)
          (hsPkgs.split)
        ];
      };
      exes = {
        "docvim" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.docvim)
          ];
        };
      };
      tests = {
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
        "tasty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.dlist)
            (hsPkgs.docvim)
            (hsPkgs.filepath)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.split)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.temporary)
          ];
        };
      };
    };
  }