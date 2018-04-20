{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "vcs-revision";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Eugene Kirpichov";
        maintainer = "ekirpichov@gmail.com";
        author = "Eugene Kirpichov";
        homepage = "";
        url = "";
        synopsis = "Facilities for accessing the version control revision of the current directory.";
        description = "Facilities for accessing the version control revision of the current directory.\nUseful e.g. to make your program output its revision using Template Haskell.";
        buildType = "Simple";
      };
      components = {
        vcs-revision = {
          depends  = [
            hsPkgs.process
          ] ++ [ hsPkgs.base ];
        };
      };
    }