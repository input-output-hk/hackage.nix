{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      bytestring = true;
      doc = true;
      text = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "to-string-instances";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Bas van Dijk <v.dijk.bas@gmail.com>";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk <v.dijk.bas@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Instances for the ToString class.";
        description = "This library provides the following instances\nfor the ToString class:\n\n* ByteString\n\n* Doc\n\n* Text\n\nNote that the instances can be enabled or disabled\nbased on cabal flags.\n\nThe idea is that eventually all packages providing string-like\ntypes will provide instances for ToString themselves.\nIn the mean time this package is here to provide them.";
        buildType = "Simple";
      };
      components = {
        to-string-instances = {
          depends  = (([
            hsPkgs.to-string-class
          ] ++ pkgs.lib.optional _flags.bytestring hsPkgs.bytestring) ++ pkgs.lib.optional _flags.doc hsPkgs.pretty) ++ pkgs.lib.optional _flags.text hsPkgs.text;
        };
      };
    }