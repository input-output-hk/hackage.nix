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
        name = "haskell-proxy-list";
        version = "0.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "contact@grzegorzgolda.com";
      author = "grzegorzgoldapl";
      homepage = "https://github.com/grzegorzgoldapl/haskell-proxy-list";
      url = "";
      synopsis = "Simple library for retrieving proxy servers info from https://proxy-list.org";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.bytestring)
          (hsPkgs.wreq)
          (hsPkgs.text)
          (hsPkgs.regex-base)
          (hsPkgs.regex-posix)
          (hsPkgs.base64-string)
          (hsPkgs.random)
        ];
      };
    };
  }