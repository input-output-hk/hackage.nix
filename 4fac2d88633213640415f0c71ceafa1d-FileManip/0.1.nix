{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "FileManip";
          version = "0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Bryan O'Sullivan";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "";
        url = "";
        synopsis = "Expressive file and directory manipulation for Haskell.";
        description = "A Haskell library for working with files and directories.\nIncludes code for pattern matching, finding files,\nmodifying file contents, and more.";
        buildType = "Custom";
      };
      components = {
        FileManip = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.unix
          ];
        };
      };
    }