{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "top";
          version = "0.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016 Pasqualino `Titto` Assini";
        maintainer = "tittoassini@gmail.com";
        author = "Pasqualino `Titto` Assini";
        homepage = "http://github.com/tittoassini/top";
        url = "";
        synopsis = "Top (typed oriented protocol) API";
        description = "See the <http://github.com/tittoassini/top online tutorial>.";
        buildType = "Simple";
      };
      components = {
        top = {
          depends  = ([
            hsPkgs.async
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.data-default-class
            hsPkgs.template-haskell
            hsPkgs.pipes
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.extra
            hsPkgs.pretty
            hsPkgs.flat
            hsPkgs.zm
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.th-lift) ++ (if compiler.isGhcjs
            then [ hsPkgs.ghcjs-base ]
            else [
              hsPkgs.acid-state
              hsPkgs.filepath
              hsPkgs.hslogger
              hsPkgs.safecopy
              hsPkgs.websockets
            ]);
        };
        tests = {
          top-test-repo = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.top
              hsPkgs.zm
            ];
          };
          top-doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.filemanip
            ];
          };
        };
      };
    }