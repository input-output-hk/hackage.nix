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
      specVersion = "1.10";
      identifier = {
        name = "haskell-google-trends";
        version = "0.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "contact@grzegorzgolda.com";
      author = "grzegorzgoldapl";
      homepage = "";
      url = "";
      synopsis = "Simple library for accessing Google Trends";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-fake-user-agent)
          (hsPkgs.wreq)
          (hsPkgs.lens)
          (hsPkgs.bytestring)
          (hsPkgs.tagsoup)
          (hsPkgs.text)
          (hsPkgs.regex-base)
          (hsPkgs.regex-posix)
        ];
      };
    };
  }