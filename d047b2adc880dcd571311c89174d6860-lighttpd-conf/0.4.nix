{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.3";
        identifier = {
          name = "lighttpd-conf";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Matt Morrow";
        maintainer = "Matt Morrow <mjm2002@gmail.com>";
        author = "Matt Morrow";
        homepage = "";
        url = "";
        synopsis = "Lighttpd configuration file tools.";
        description = "Lighttpd configuration file tools. Haddock docs are at\n<http://code.haskell.org/~morrow/code/haskell/web/lighttpd-conf/haddock/>.";
        buildType = "Simple";
      };
      components = {
        lighttpd-conf = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.template-haskell
            hsPkgs.pretty
            hsPkgs.bytestring
            hsPkgs.packedstring
          ];
          build-tools = [
            hsPkgs.buildPackages.alex
            hsPkgs.buildPackages.happy
          ];
        };
      };
    }