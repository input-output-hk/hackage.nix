{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      text = true;
      bytestring = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sext";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dima@dzhus.org";
        author = "Dmitry Dzhus";
        homepage = "http://github.com/dzhus/sext/";
        url = "";
        synopsis = "Lists, Texts and ByteStrings with type-encoded length";
        description = "Sext (/s/tatic t/ext/) provides type-level safety for\nbasic operations on string-like types (finite\nlists of elements). Use it when you need static\nguarantee on lengths of strings produced in your\ncode.";
        buildType = "Simple";
      };
      components = {
        "sext" = {
          depends  = ([
            hsPkgs.base
            hsPkgs.template-haskell
          ] ++ pkgs.lib.optional _flags.bytestring hsPkgs.bytestring) ++ pkgs.lib.optional _flags.text hsPkgs.text;
        };
      };
    }