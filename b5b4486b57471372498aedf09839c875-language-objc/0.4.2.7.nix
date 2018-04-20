{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      usebytestrings = true;
      separatesyb = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "language-objc";
          version = "0.4.2.7";
        };
        license = "BSD-3-Clause";
        copyright = "LICENSE";
        maintainer = "jwlato@gmail.com";
        author = "AUTHORS";
        homepage = "http://www.tiresiaspress.us/haskell/language-objc";
        url = "";
        synopsis = "Analysis and generation of Objective C code";
        description = "Language-ObjC is a haskell library for the analysis and\ngeneration of Objective C code.\nIt features a complete, well tested parser and pretty printer.";
        buildType = "Simple";
      };
      components = {
        language-objc = {
          depends  = ([
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.newtype
            hsPkgs.pretty
          ] ++ (if _flags.separatesyb
            then [ hsPkgs.base hsPkgs.syb ]
            else [
              hsPkgs.base
            ])) ++ pkgs.lib.optional _flags.usebytestrings hsPkgs.bytestring;
        };
      };
    }