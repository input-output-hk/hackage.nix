{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "OpenAFP-Utils";
          version = "1.4.1";
        };
        license = "LicenseRef-PublicDomain";
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
          "afp2line2pdf" = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.base
              hsPkgs.line2pdf
              hsPkgs.bytestring
            ];
          };
          "afp-olndump" = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.binary
            ];
          };
          "afp-dump" = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.xhtml
            ];
          };
          "afp-page" = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.base
            ];
          };
          "afp-replace" = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.base
            ];
          };
          "afp-scanudc" = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.base
              hsPkgs.directory
            ];
          };
          "afp-split" = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.base
            ];
          };
          "afp-split-scb" = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.base
            ];
          };
          "afp-split-tcb" = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.base
              hsPkgs.filepath
            ];
          };
          "afp-type" = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.base
            ];
          };
          "afp-udcfix" = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.base
              hsPkgs.regex-base
              hsPkgs.regex-posix
              hsPkgs.hashable
            ];
          };
          "afp-validate" = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.base
            ];
          };
          "afp2line" = {
            depends  = [
              hsPkgs.OpenAFP
              hsPkgs.base
              hsPkgs.containers
            ];
          };
        };
      };
    }