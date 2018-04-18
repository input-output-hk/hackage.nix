{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "empty";
          version = "9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Ceci n'est pas une package";
        description = "";
        buildType = "Simple";
      };
      components = { empty = {}; };
    }