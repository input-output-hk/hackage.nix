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
        name = "eurofxref";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 by Stephen Blackheath";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "";
      url = "";
      synopsis = "Free foreign exchange/currency feed from the European Central Bank";
      description = "A Haskell API for the the European Central Bank's free daily currency reference rates.\n\nChangeLog: 0.1.2: Timestamp now has correct hour.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.enumerator)
          (hsPkgs.failure)
          (hsPkgs.http-enumerator)
          (hsPkgs.http-types)
          (hsPkgs.hexpat)
          (hsPkgs.mtl)
          (hsPkgs.time)
        ];
      };
    };
  }