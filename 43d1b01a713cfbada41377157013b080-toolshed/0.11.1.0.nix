{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      havedeepseq = true;
      llvm = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "toolshed";
          version = "0.11.1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "(C) 2010 Dr. Alistair Ward";
        maintainer = "toolshed <at> functionalley <dot> eu";
        author = "Dr. Alistair Ward";
        homepage = "http://functionalley.eu";
        url = "";
        synopsis = "Utilities used by other packages.";
        description = "An ill-defined collection of simple unrelated utilities used by other packages from <http://functionalley.eu>";
        buildType = "Simple";
      };
      components = {
        toolshed = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optional _flags.havedeepseq hsPkgs.deepseq;
        };
      };
    }