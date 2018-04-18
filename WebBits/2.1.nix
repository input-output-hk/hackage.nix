{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "WebBits";
          version = "2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2007-2011 Brown University and Claudiu Saftoiu";
        maintainer = "Arjun Guha <arjun@cs.brown.edu>";
        author = "Arjun Guha, Claudiu Saftoiu, and Spiridon Eliopoulos";
        homepage = "http://www.cs.brown.edu/research/plt/";
        url = "";
        synopsis = "JavaScript analysis tools";
        description = "WebBits is a collection of libraries for working with JavaScript.";
        buildType = "Custom";
      };
      components = {
        WebBits = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.containers
            hsPkgs.syb
          ];
        };
      };
    }