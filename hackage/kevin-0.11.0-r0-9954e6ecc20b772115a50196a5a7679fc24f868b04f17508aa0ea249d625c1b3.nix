{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "kevin";
        version = "0.11.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "me@joelt.io";
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
          depends  = ([
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cprng-aes)
            (hsPkgs.damnpacket)
            (hsPkgs.data-default)
            (hsPkgs.HTTP)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.regex-pcre-builtin)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.tls)
            (hsPkgs.tls-extra)
          ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "7.7") [
            (hsPkgs.exceptions)
            (hsPkgs.lens)
          ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.7") (hsPkgs.MonadCatchIO-transformers);
        };
      };
    };
  }