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
        name = "uri-enumerator-file";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michaels@suite-sol.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/xml";
      url = "";
      synopsis = "uri-enumerator backend for the file scheme";
      description = "uri-enumerator backend for the file scheme";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.enumerator)
          (hsPkgs.text)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.containers)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.uri-enumerator)
        ];
      };
    };
  }