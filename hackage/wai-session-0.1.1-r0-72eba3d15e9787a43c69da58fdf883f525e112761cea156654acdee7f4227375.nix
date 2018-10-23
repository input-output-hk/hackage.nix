{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "wai-session";
        version = "0.1.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2012 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/wai-session";
      url = "";
      synopsis = "Flexible session middleware for WAI";
      description = "Provides a generic, cookie-based middleware for sessions that is\nparameterised over the session store, the cookie name, and the\ncookie parameters (such as path, expiry, etc).  Passes a pair of\nfunctions (lookup key, set key) for the current session through the\n'Vault' in the 'Request'.\n\nAlso provides a simple example session store based on threadsafe\n'IORef's and 'Data.Map'.\n\nSee example/Main.hs in git for example usage.";
      buildType = "Simple";
    };
    components = {
      "wai-session" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.StateVar)
          (hsPkgs.vault)
          (hsPkgs.cookie)
          (hsPkgs.wai)
          (hsPkgs.http-types)
          (hsPkgs.blaze-builder)
        ];
      };
    };
  }