{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-generate";
          version = "0.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013-2015 Benno Fünfstück";
        maintainer = "Benno Fünfstück <benno.fuenfstueck@gmail.com>";
        author = "Benno Fünfstück";
        homepage = "http://github.com/bennofs/haskell-generate/";
        url = "";
        synopsis = "Typesafe generation of haskell source code";
        description = "This library provides an interface to generate haskell source code, verifying at compile time\nthat the resulting code typechecks. See https://github.com/bennofs/haskell-generate for an\nintroduction explaining how to use the library.";
        buildType = "Custom";
      };
      components = {
        haskell-generate = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.haskell-src-exts
            hsPkgs.containers
            hsPkgs.template-haskell
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }