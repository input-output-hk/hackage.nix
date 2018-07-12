{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tempo";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Timur Rubeko";
        maintainer = "timur@rubeko.com";
        author = "Timur Rubeko";
        homepage = "http://github.com/candidtim/tempo#readme";
        url = "";
        synopsis = "Command-line tool to log time-tracking information into JIRA Tempo plugin";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "tempo" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.regex-posix
            hsPkgs.split
            hsPkgs.ConfigFile
            hsPkgs.mtl
            hsPkgs.http-conduit
            hsPkgs.resourcet
            hsPkgs.bytestring
            hsPkgs.base64-bytestring
          ];
        };
        exes = {
          "tempo-git" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tempo
              hsPkgs.mtl
              hsPkgs.MissingH
            ];
          };
          "tempo-simple" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tempo
              hsPkgs.time
              hsPkgs.mtl
              hsPkgs.MissingH
            ];
          };
        };
        tests = {
          "tempo-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tempo
            ];
          };
        };
      };
    }