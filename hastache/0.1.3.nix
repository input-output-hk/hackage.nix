{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hastache";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "Sergey S Lymar (c) 2011";
        maintainer = "Sergey S Lymar <sergey.lymar@gmail.com>";
        author = "Sergey S Lymar <sergey.lymar@gmail.com>";
        homepage = "http://github.com/lymar/hastache";
        url = "";
        synopsis = "Haskell implementation of Mustache templates";
        description = "Haskell implementation of Mustache templates (<http://mustache.github.com/>).\n\nSee homepage for examples of usage: <http://github.com/lymar/hastache>";
        buildType = "Simple";
      };
      components = {
        hastache = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.utf8-string
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.syb
          ];
        };
      };
    }