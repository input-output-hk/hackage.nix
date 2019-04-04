{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "push-notifications"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Obsidian Systems and David Fendrich";
      maintainer = "maintainer@obsidian.systems";
      author = "";
      homepage = "https://github.com/obsidiansystems/haskell-phone-push";
      url = "";
      synopsis = "Push notifications for Android and iOS";
      description = "Push notifications for Android and iOS\n\nFunctions for sending push notifications to popular mobile platforms.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.conduit)
          (hsPkgs.http-conduit)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.network)
          (hsPkgs.time)
          (hsPkgs.base16-bytestring)
          (hsPkgs.convertible)
          (hsPkgs.binary)
          (hsPkgs.http-types)
          (hsPkgs.resourcet)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.casing)
          (hsPkgs.data-default)
          ];
        };
      };
    }