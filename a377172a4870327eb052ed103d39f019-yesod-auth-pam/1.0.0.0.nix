{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.14";
      identifier = {
        name = "yesod-auth-pam";
        version = "1.0.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Kazuo Koga <obiwanko@me.com>";
      author = "Kazuo Koga <obiwanko@me.com>";
      homepage = "";
      url = "";
      synopsis = "Provides PAM authentication module";
      description = "Provides PAM authentication module that simply\nlets a user specify his/her identifier.\n\nThis is not intended for real world use,\njust for private network.";
      buildType = "Simple";
    };
    components = {
      "yesod-auth-pam" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hamlet)
          (hsPkgs.pam)
          (hsPkgs.text)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-form)
        ];
      };
    };
  }