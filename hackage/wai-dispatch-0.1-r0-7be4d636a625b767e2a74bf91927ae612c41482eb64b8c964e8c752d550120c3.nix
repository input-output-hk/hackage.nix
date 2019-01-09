{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "wai-dispatch"; version = "0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2012 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/wai-dispatch";
      url = "";
      synopsis = "Nice wrapper around yesod-routes for use with WAI";
      description = "Provides a simple wrapper for taking Route data mapping to WAI\n'Application's and a default 'Application' and producing a single\n'Application'.\n\nYou may find the route-generator package useful for generating route\ndata to use with this library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.yesod-routes)
          (hsPkgs.wai)
          ];
        };
      };
    }