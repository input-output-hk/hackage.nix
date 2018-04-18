{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bhoogle";
          version = "0.1.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Andre Van Der Merwe";
        maintainer = "andre@andrevdm.com";
        author = "Andre Van Der Merwe";
        homepage = "https://github.com/githubuser/bhoogle#readme";
        url = "";
        synopsis = "Simple terminal GUI for local hoogle.";
        description = "bhoogle is a terminal GUI layer over local hoogle. It provides search ahead and sub-string filtering in addition to the usual type-search.";
        buildType = "Simple";
      };
      components = {
        exes = {
          bhoogle = {
            depends  = [
              hsPkgs.base
              hsPkgs.protolude
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.brick
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.vty
              hsPkgs.vector
              hsPkgs.process
              hsPkgs.lens
              hsPkgs.bytestring
              hsPkgs.time
              hsPkgs.hoogle
            ];
          };
        };
      };
    }