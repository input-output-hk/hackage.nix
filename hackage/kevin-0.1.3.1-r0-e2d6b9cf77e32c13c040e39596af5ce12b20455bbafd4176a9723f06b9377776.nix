{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "kevin";
        version = "0.1.3.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "barebonesgraphics@gmail.com";
      author = "Joel Taylor";
      homepage = "";
      url = "";
      synopsis = "a dAmn ↔ IRC proxy";
      description = "a dAmn ↔ IRC proxy";
      buildType = "Simple";
    };
    components = {
      exes = {
        "kevin" = {
          depends  = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cprng-aes)
            (hsPkgs.data-lens)
            (hsPkgs.data-lens-template)
            (hsPkgs.HTTP)
            (hsPkgs.MonadCatchIO-mtl)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.regex-pcre-builtin)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.tls)
            (hsPkgs.tls-extra)
          ];
        };
      };
    };
  }