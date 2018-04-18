{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      bytestring = true;
      text = true;
      vector = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sext";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dima@dzhus.org";
        author = "Dmitry Dzhus";
        homepage = "https://github.com/dzhus/sext#readme";
        url = "";
        synopsis = "Lists, Texts, ByteStrings, and Vectors with type-encoded length";
        description = "Sext (/s/tatic t/ext/) provides type-level safety for basic operations on string-like types (finite lists of elements). Use it when you need static guarantee on lengths of strings produced in your code.";
        buildType = "Simple";
      };
      components = {
        sext = {
          depends  = (([
            hsPkgs.base
            hsPkgs.template-haskell
          ] ++ pkgs.lib.optional _flags.bytestring hsPkgs.bytestring) ++ pkgs.lib.optional _flags.text hsPkgs.text) ++ pkgs.lib.optional _flags.vector hsPkgs.vector;
        };
        tests = {
          sext-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.sext
            ];
          };
        };
      };
    }