{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      enable_caching = true;
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hasktags";
          version = "0.68.3";
        };
        license = "BSD-3-Clause";
        copyright = "The University Court of the University of Glasgow";
        maintainer = "Marc Weber <marco-oweber@gmx.de>,\nMarco Túlio Pimenta Gontijo <marcotmarcot@gmail.com>";
        author = "The GHC Team";
        homepage = "http://github.com/MarcWeber/hasktags";
        url = "";
        synopsis = "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs";
        description = "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hasktags = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.json
              hsPkgs.interlude
              hsPkgs.HUnit
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.json
              hsPkgs.HUnit
            ];
          };
        };
      };
    }