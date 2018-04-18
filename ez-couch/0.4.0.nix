{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ez-couch";
          version = "0.4.0";
        };
        license = "MIT";
        copyright = "(c) 2013, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov";
        homepage = "https://github.com/nikita-volkov/ez-couch";
        url = "";
        synopsis = "A high level static library for working with CouchDB";
        description = "EZCouch is a library which takes a mission of bringing the topmost level of abstraction for working with CouchDB from Haskell. It abstracts away from loose concepts of this database and brings a strict static API over standard ADTs.";
        buildType = "Simple";
      };
      components = {
        ez-couch = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.time
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.attoparsec-conduit
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.hslogger
            hsPkgs.old-locale
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.resourcet
            hsPkgs.string-conversions
            hsPkgs.classy-prelude
            hsPkgs.classy-prelude-conduit
            hsPkgs.hashable
            hsPkgs.vector
          ];
        };
      };
    }