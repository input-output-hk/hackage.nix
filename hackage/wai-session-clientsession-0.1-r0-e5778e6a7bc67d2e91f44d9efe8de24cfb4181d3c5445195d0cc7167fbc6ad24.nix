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
      specVersion = "1.8";
      identifier = {
        name = "wai-session-clientsession";
        version = "0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2012 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/wai-session-clientsession";
      url = "";
      synopsis = "Session store based on clientsession";
      description = "Provides a session store for use with wai-session.\n\nSee example/Main.hs in git for example usage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.cereal)
          (hsPkgs.clientsession)
          (hsPkgs.errors)
          (hsPkgs.wai-session)
        ];
      };
    };
  }