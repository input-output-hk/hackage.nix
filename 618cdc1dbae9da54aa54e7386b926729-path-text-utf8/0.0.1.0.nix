{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "path-text-utf8";
          version = "0.0.1.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "Chris Martin <ch.martin@gmail.com>";
        author = "Chris Martin <ch.martin@gmail.com>";
        homepage = "https://github.com/chris-martin/path-text-utf8";
        url = "";
        synopsis = "Read and write UTF-8 text files";
        description = "This is a trivial integration of the @path@ and @text@\npackages, providing convenient functions to read and\nwrite UTF-8 text files.";
        buildType = "Simple";
      };
      components = {
        path-text-utf8 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.path
            hsPkgs.safe-exceptions
            hsPkgs.text
          ];
        };
      };
    }