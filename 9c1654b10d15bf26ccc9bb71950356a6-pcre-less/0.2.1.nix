{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "pcre-less";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sreservoir@gmail.com";
        author = "sreservoir";
        homepage = "";
        url = "";
        synopsis = "Nicer interface to regex-pcre.";
        description = "Uses regex-pcre to provide substitution, backrefs.\nUses '`' over '\\\\' just to be idiosyncratic. (It's prettier.)\nSee the tests for more information.";
        buildType = "Simple";
      };
      components = {
        pcre-less = {
          depends  = [
            hsPkgs.base
            hsPkgs.regex-pcre
            hsPkgs.array
          ];
        };
      };
    }