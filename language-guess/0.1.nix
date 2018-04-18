{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "language-guess";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cra+code@cra.no";
        author = "Christian Rødli Amble";
        homepage = "";
        url = "";
        synopsis = "Guess at which human language a text is written in.";
        description = "Guess at which human language a text is written in,\nbased on the PEAR module Text_LanguageDetect.";
        buildType = "Simple";
      };
      components = {
        language-guess = {
          depends  = [
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.containers
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.utility-ht;
        };
      };
    }