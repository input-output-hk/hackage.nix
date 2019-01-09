{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "activitypub"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Luke Hoersten";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "https://github.com/LukeHoersten/activitypub#readme";
      url = "";
      synopsis = "ActivityPub Haskell Library";
      description = "ActivityPub Haskell library with vocabulary to spec.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.network-uri)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      };
    }