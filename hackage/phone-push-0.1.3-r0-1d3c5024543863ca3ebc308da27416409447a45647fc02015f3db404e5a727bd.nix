{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "phone-push"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 David Fendrich";
      maintainer = "David Fendrich <david@aitellu.com>";
      author = "";
      homepage = "https://github.com/gurgeh/haskell-phone-push";
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
          ];
        };
      };
    }