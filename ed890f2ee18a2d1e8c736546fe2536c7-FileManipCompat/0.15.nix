{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "FileManipCompat";
          version = "0.15";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Thomas Hartman <thomashartman1@gmail.com>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "";
        url = "";
        synopsis = "Expressive file and directory manipulation for Haskell.";
        description = "A Haskell library for working with files and directories.\nIncludes code for pattern matching, finding files,\nmodifying file contents, and more.";
        buildType = "Simple";
      };
      components = {
        FileManipCompat = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.unix-compat
          ];
        };
      };
    }