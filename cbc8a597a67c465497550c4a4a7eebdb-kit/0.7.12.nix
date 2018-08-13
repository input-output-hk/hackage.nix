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
      specVersion = "1.6";
      identifier = {
        name = "kit";
        version = "0.7.12";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nkpart@gmail.com";
      author = "Nick Partridge";
      homepage = "http://github.com/nkpart/kit";
      url = "";
      synopsis = "A dependency manager for Xcode (Objective-C) projects";
      description = "A dependency manager for Xcode (Objective-C) projects";
      buildType = "Simple";
    };
    components = {
      exes = {
        "kit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Glob)
            (hsPkgs.attoparsec)
            (hsPkgs.ansi-terminal)
            (hsPkgs.cabal-file-th)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.errors)
            (hsPkgs.yaml)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }