{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-form-multi"; version = "1.6.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "James Burton <jamesejburton@gmail.com>";
      author = "James Burton <jamesejburton@gmail.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Multi-input form handling for Yesod Web Framework";
      description = "API docs and the README are available at <http://www.stackage.org/package/yesod-form-multi>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.shakespeare)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-form)
          ] ++ (pkgs.lib).optional (flags.network-uri) (hsPkgs.network-uri);
        };
      };
    }