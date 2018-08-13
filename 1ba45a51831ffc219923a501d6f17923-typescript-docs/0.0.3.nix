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
      specVersion = "1.4";
      identifier = {
        name = "typescript-docs";
        version = "0.0.3";
      };
      license = "MIT";
      copyright = "(c) DICOM Grid Inc. 2013";
      maintainer = "Phillip Freeman <paf31@cantab.net>";
      author = "Phillip Freeman <paf31@cantab.net>";
      homepage = "http://github.com/paf31/typescript-docs";
      url = "";
      synopsis = "A documentation generator for TypeScript Definition files";
      description = "A documentation generator for TypeScript Definition files";
      buildType = "Simple";
    };
    components = {
      exes = {
        "typescript-docs" = {
          depends  = [
            (hsPkgs.utf8-string)
            (hsPkgs.syb)
            (hsPkgs.split)
            (hsPkgs.filepath)
            (hsPkgs.filemanip)
            (hsPkgs.cmdtheline)
            (hsPkgs.containers)
            (hsPkgs.blaze-html)
            (hsPkgs.parsec)
            (hsPkgs.base)
            (hsPkgs.language-typescript)
          ];
        };
      };
    };
  }