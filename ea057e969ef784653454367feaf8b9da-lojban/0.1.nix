{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "lojban";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done <chrisdone@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Useful utilities for the Lojban language";
        description = "Some utilities such as querying Jbovlaste XML\nexports for gismu, gloss, rafsi, etc. and\nlujvo-decomposition. More stuff to come.";
        buildType = "Simple";
      };
      components = {
        lojban = {
          depends  = [
            hsPkgs.base
            hsPkgs.xml
            hsPkgs.strict
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.regex-compat
            hsPkgs.containers
            hsPkgs.tagsoup
            hsPkgs.HTTP
            hsPkgs.curl
          ];
        };
        exes = {
          jbovlastegendb = {
            depends  = [ hsPkgs.haskell98 ];
          };
        };
      };
    }