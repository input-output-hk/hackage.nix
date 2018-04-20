{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "OpenAFP-Utils";
          version = "1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "audreyt@audreyt.org";
        author = "Audrey Tang";
        homepage = "";
        url = "";
        synopsis = "Assorted utilities to work with AFP data streams";
        description = "Assorted utilities to work with AFP data streams";
        buildType = "Simple";
      };
      components = {
        exes = {
          afp-dump = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.uconv
              hsPkgs.xhtml
            ];
          };
          afp-page = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.haskell98
              hsPkgs.base
            ];
          };
          afp-replace = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.haskell98
              hsPkgs.base
            ];
          };
          afp-scanudc = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.directory
            ];
          };
          afp-split = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.haskell98
              hsPkgs.base
            ];
          };
          afp-split-scb = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.haskell98
              hsPkgs.base
            ];
          };
          afp-split-tcb = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.filepath
            ];
          };
          afp-type = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.haskell98
              hsPkgs.base
            ];
          };
          afp-udcfix = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.regex-base
              hsPkgs.regex-posix
            ];
          };
          afp-validate = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.haskell98
              hsPkgs.base
            ];
          };
          afp2line = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.haskell98
              hsPkgs.base
            ];
          };
          afp-olndump = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.binary
            ];
          };
        };
      };
    }