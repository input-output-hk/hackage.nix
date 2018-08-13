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
        name = "file-templates";
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "anfelor@posteo.de";
      author = "Anton Felix Lorenzen";
      homepage = "https://github.com/anfelor/file-templates#readme";
      url = "";
      synopsis = "Use templates for files and directories";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "new" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.foundation)
            (hsPkgs.directory)
            (hsPkgs.attoparsec)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.unordered-containers)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }