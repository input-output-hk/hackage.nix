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
        name = "wai";
        version = "1.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/yesodweb/wai";
      url = "";
      synopsis = "Web Application Interface.";
      description = "Provides a common protocol for communication between web applications and web servers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.conduit)
          (hsPkgs.network)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.vault)
        ];
      };
    };
  }