{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "empty";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2010 John Millikin <jmillikin@gmail.com>";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Class for types with an \"empty\" value.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "empty" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }