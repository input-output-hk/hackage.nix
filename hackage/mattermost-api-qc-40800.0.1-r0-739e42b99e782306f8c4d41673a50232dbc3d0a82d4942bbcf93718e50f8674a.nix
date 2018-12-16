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
        name = "mattermost-api-qc";
        version = "40800.0.1";
      };
      license = "ISC";
      copyright = "2017 Kevin Quick";
      maintainer = "kquick@galois.com";
      author = "Kevin Quick";
      homepage = "https://github.com/matterhorn-chat/mattermost-api-qc";
      url = "";
      synopsis = "QuickCheck instances for the Mattermost client API library";
      description = "A testing library for the mattermost-api library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mattermost-api)
          (hsPkgs.QuickCheck)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
    };
  }