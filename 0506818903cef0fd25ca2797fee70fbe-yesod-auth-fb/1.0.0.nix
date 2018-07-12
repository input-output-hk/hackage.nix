{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      ghc7 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-auth-fb";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
        author = "Felipe Lessa, Michael Snoyman";
        homepage = "https://github.com/meteficha/yesod-auth-fb";
        url = "";
        synopsis = "Authentication backend for Yesod using Facebook.";
        description = "This package allows you to use Yesod's authentication framework\nwith Facebook as your backend.  That is, your site's users will\nlog in to your site through Facebook.  Your application need to\nbe registered on Facebook.";
        buildType = "Simple";
      };
      components = {
        "yesod-auth-fb" = {
          depends  = [
            hsPkgs.yesod-core
            hsPkgs.yesod-auth
            hsPkgs.wai
            hsPkgs.http-conduit
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.fb
            hsPkgs.conduit
          ] ++ [ hsPkgs.base ];
        };
      };
    }