{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "process-qq";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011, Hideyuki Tanaka";
        maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
        author = "Hideyuki Tanaka";
        homepage = "http://github.com/tanakh/process-qq";
        url = "";
        synopsis = "Quasi-Quoters for exec process";
        description = "Quasi-Quoters for exec process";
        buildType = "Simple";
      };
      components = {
        process-qq = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.process
            hsPkgs.enumerator
            hsPkgs.shakespeare-text
          ];
        };
      };
    }