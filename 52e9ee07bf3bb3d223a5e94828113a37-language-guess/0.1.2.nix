{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "language-guess";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011-2014 Tingtun AS";
        maintainer = "cra+code@cra.no";
        author = "Christian Rødli Amble";
        homepage = "";
        url = "";
        synopsis = "Guess at which language a text is written in using\ntrigrams.";
        description = "Guess at which language a text is written in using\ntrigrams, based on the PEAR module Text_LanguageDetect.";
        buildType = "Simple";
      };
      components = {
        language-guess = {
          depends  = [
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.containers
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.0.0") hsPkgs.utility-ht;
        };
      };
    }