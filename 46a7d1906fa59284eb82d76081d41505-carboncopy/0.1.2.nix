{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "carboncopy";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jdevelop@gmail.com";
        author = "Eugene Dzhurinsky";
        homepage = "http://github.com/jdevelop/carboncopy";
        url = "";
        synopsis = "Drop emails from threads being watched into special CC folder.";
        description = "Filter for procmail, which allows to track message threads and\ncopy messages, which were sent to the threads you're watching,\ninto separate folder.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "carboncopy" = {
            depends  = [
              hsPkgs.base
              hsPkgs.IfElse
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.MissingH
              hsPkgs.haskell98
            ];
          };
        };
      };
    }