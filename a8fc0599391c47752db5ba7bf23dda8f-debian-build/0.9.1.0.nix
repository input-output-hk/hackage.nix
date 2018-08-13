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
        name = "debian-build";
        version = "0.9.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014, 2015 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://twitter.com/khibino/";
      url = "";
      synopsis = "Debian package build sequence tools";
      description = "This package provides build sequence functions\nfor debian package, and includes on-the-fly\nbuild command 'odebuild'.";
      buildType = "Simple";
    };
    components = {
      "debian-build" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.transformers)
          (hsPkgs.split)
          (hsPkgs.Cabal)
        ];
      };
      exes = {
        "odebuild" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.debian-build)
          ];
        };
      };
    };
  }