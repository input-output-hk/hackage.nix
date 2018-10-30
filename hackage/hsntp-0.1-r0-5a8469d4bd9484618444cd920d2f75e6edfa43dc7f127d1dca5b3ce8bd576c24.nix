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
      specVersion = "1.2";
      identifier = {
        name = "hsntp";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Einar Karttunen <ekarttun@cs.helsinki.fi>";
      author = "Einar Karttunen";
      homepage = "http://www.cs.helsinki.fi/u/ekarttun/util/";
      url = "";
      synopsis = "Libraries to use SNTP protocol and small client/server implementations.";
      description = "HSNTP - Haskell Simple Network Time Protocol\n\nSimple Network Time Protocol is a simple subset of NTP. This package\nincludes Haskell libraries to use SNTP Protocol and small client and\nserver implementations. The package contains everything needed for a compilation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.old-time)
        ];
      };
      exes = {
        "sntpdate" = {
          depends  = [ (hsPkgs.unix) ];
        };
        "sntpd" = {};
      };
    };
  }