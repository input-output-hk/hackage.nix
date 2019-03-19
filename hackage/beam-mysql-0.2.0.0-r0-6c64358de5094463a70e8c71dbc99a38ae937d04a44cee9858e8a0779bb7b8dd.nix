{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { werror = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "beam-mysql"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "travis@athougies.net";
      author = "Travis Athougies";
      homepage = "https://github.com/tathougies/beam-mysql";
      url = "";
      synopsis = "Connection layer between beam and MySQL/MariaDB";
      description = "Beam driver for MySQL or MariaDB databases, two popular open-source databases.\nSupports most beam features, but does not yet have support for \"beam-migrate\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.beam-core)
          (hsPkgs.mysql)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.hashable)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.case-insensitive)
          (hsPkgs.scientific)
          (hsPkgs.free)
          (hsPkgs.network-uri)
          ];
        };
      };
    }