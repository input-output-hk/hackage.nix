{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      development = false;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "ats-setup";
        version = "0.1.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "ATS scripts for Cabal builds";
      description = "This package contains various scripts that go in a package's @Setup.hs@ to make building libraries with ATS dependencies easier.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.directory)
          (hsPkgs.zlib)
          (hsPkgs.http-client-tls)
          (hsPkgs.tar)
          (hsPkgs.http-client)
          (hsPkgs.parallel-io)
        ];
      };
    };
  }