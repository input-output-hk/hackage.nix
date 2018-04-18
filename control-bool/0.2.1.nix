{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "control-bool";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012-2013 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/control-bool";
        url = "";
        synopsis = "Useful combinators for boolean expressions";
        description = "";
        buildType = "Simple";
      };
      components = {
        control-bool = {
          depends  = [ hsPkgs.base ];
        };
      };
    }