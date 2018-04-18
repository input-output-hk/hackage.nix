{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hunp";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "deniz.a.m.dogan@gmail.com";
        author = "Deniz Dogan";
        homepage = "http://github.com/skorpan/hunp/tree/master";
        url = "";
        synopsis = "Unpacker tool with DWIM";
        description = "hunp is an unpacker tool which does what you mean.  By matching on regular expressions, it automagically calls the right unpacking program for you, e.g. \"unrar\" for files ending in \".rar\", etc.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hunp = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.pcre-light
              hsPkgs.bytestring
              hsPkgs.monads-fd
              hsPkgs.split
              hsPkgs.parsec
            ];
          };
        };
      };
    }