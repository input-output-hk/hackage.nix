{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      bytestring = true;
      text = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sext";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dima@dzhus.org";
        author = "Dmitry Dzhus";
        homepage = "http://github.com/dzhus/sext/";
        url = "";
        synopsis = "Lists, Texts and ByteStrings with type-encoded length";
        description = "Sext (/s/tatic t/ext/) provides type-level safety for basic operations on string-like types (finite lists of elements). Use it when you need static guarantee on lengths of strings produced in your code.";
        buildType = "Simple";
      };
      components = {
        sext = {
          depends  = ([
            hsPkgs.base
            hsPkgs.template-haskell
          ] ++ pkgs.lib.optional _flags.bytestring hsPkgs.bytestring) ++ pkgs.lib.optional _flags.text hsPkgs.text;
        };
      };
    }